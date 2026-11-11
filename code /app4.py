import os
from flask import Flask, render_template, request, redirect, url_for, session
import mysql.connector
from dotenv import load_dotenv
from datetime import datetime

load_dotenv()

app = Flask(__name__)
app.secret_key = os.getenv("SECRET_KEY", "dev_secret_key")

db_config = {
    "host": os.getenv("DB_HOST"),
    "port": os.getenv("DB_PORT"),
    "user": "root",
    "password": os.getenv("MYSQL_ROOT_PASSWORD"),
    "database": os.getenv("MYSQL_DATABASE")
}

ENTREPRENEUR_PASSWORD = os.getenv("ENTREPRENEUR_PASSWORD")


def get_db_connection():
    return mysql.connector.connect(**db_config)


@app.route("/")
def home1():
    return render_template("home1.html")


####### le mode client

@app.route("/account", methods=["GET", "POST"])
def account():
    message = ""
    next_page = request.args.get("next")

    if request.method == "POST":
        username = request.form["username"].strip()
        next_page = request.form.get("next")

        if not username:
            return render_template("account.html", message="Mettez un username.", next_page=next_page)

        conn = get_db_connection()
        cursor = conn.cursor(dictionary=True)

        cursor.execute(
            "SELECT * FROM Utilisateur WHERE IDUser = %s",
            (username,)
        )
        user = cursor.fetchone()

        cursor.close()
        conn.close()

        if user:
            session["username"] = user["IDUser"]
            session["first_name"] = user["Prenom"]
            session["last_name"] = user["Nom"]
            session["delivery_address"] = user["AdresseLivraison"]

            if next_page and next_page != "None" and next_page.strip() != "":
                return redirect(next_page)

            return redirect(url_for("profile"))
        else:
            return render_template("new_account.html", username=username, next_page=next_page)

    return render_template("account.html", message=message, next_page=next_page)

@app.route("/profile")
def profile():
    if "username" not in session:
        return redirect(url_for("account"))

    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    cursor.execute("""
        SELECT IDUser, Prenom, Nom, AdresseLivraison
        FROM Utilisateur
        WHERE IDUser = %s
    """, (session["username"],))

    user = cursor.fetchone()

    cursor.close()
    conn.close()

    if not user:
        session.clear()
        return redirect(url_for("account"))

    return render_template(
        "profile.html",
        first_name=user["Prenom"],
        last_name=user["Nom"],
        username=user["IDUser"],
        delivery_address=user["AdresseLivraison"]
    )

@app.route("/orders")
def orders():
    if "username" not in session:
        return redirect(url_for("account"))

    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    cursor.execute("""
        SELECT 
            c.IDCommande,
            c.DateCommande,
            pp.NomProduit,
            pp.PrixProduit,
            cp.TextePersonalisable,
            p.NomParfum,
            d.NomDecoration
        FROM Commande c
        JOIN UtilisateurCommande uc ON c.IDCommande = uc.IDCommande
        JOIN CommandePersonalisable cp ON c.IDCommande = cp.IDCommande
        JOIN ProduitPersonalisable pp ON cp.IDProduit = pp.IDProduit
        LEFT JOIN Parfum p ON cp.IDParfum = p.IDParfum
        LEFT JOIN Decoration d ON cp.IDDecoration = d.IDDecoration
        WHERE uc.IDUser = %s
        ORDER BY c.DateCommande DESC
    """, (session["username"],))

    personalisable_orders = cursor.fetchall()

    cursor.execute("""
        SELECT 
            c.IDCommande,
            c.DateCommande,
            pnp.NomProduit,
            pnp.PrixProduit,
            cnp.TextePersonalisable
        FROM Commande c
        JOIN UtilisateurCommande uc ON c.IDCommande = uc.IDCommande
        JOIN CommandeNonPersonalisable cnp ON c.IDCommande = cnp.IDCommande
        JOIN ProduitNonPersonalisable pnp ON cnp.IDProduit = pnp.IDProduit
        WHERE uc.IDUser = %s
        ORDER BY c.DateCommande DESC
    """, (session["username"],))

    non_personalisable_orders = cursor.fetchall()

    cursor.close()
    conn.close()

    return render_template(
        "orders.html",
        personalisable_orders=personalisable_orders,
        non_personalisable_orders=non_personalisable_orders
    )

@app.route("/logout")
def logout():
    session.clear()
    return redirect(url_for("home1"))


@app.route("/new_account", methods=["GET", "POST"])
def new_account():
    message = ""

    if request.method == "POST":
        username = request.form["username"].strip()
        first_name = request.form["first_name"].strip()
        last_name = request.form["last_name"].strip()
        delivery_address = request.form["delivery_address"].strip()

        if not first_name or not last_name or not delivery_address:
            return render_template("new_account.html", message="Complétez tous les champs.", username=username)

        conn = get_db_connection()
        cursor = conn.cursor(dictionary=True)
        cursor.execute("""
            INSERT INTO Utilisateur (IDUser, Prenom, Nom, AdresseLivraison)
            VALUES (%s, %s, %s, %s)
        """, (username, first_name, last_name, delivery_address))

        conn.commit()

        session["username"] = username
        session["first_name"] = first_name
        session["last_name"] = last_name
        session["delivery_address"] = delivery_address

        next_page = request.form.get("next")
        if next_page and next_page != "None" and next_page.strip() != "":
            return redirect(next_page)

        return redirect(url_for("profile"))

    return render_template("new_account.html")


@app.route("/catalogue")
def catalogue():
    return render_template("catalogue.html")

@app.route("/personalisable_products")
def personalisable_products():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    cursor.execute("""
    SELECT
        p.IDProduit,
        p.NomProduit,
        p.PrixProduit,
        CASE 
            WHEN COUNT(DISTINCT cp.IDCommande) >= 10 THEN 1
            ELSE 0
        END AS is_bestseller
    FROM ProduitPersonalisable p
    LEFT JOIN CommandePersonalisable cp
        ON p.IDProduit = cp.IDProduit
    GROUP BY p.IDProduit, p.NomProduit, p.PrixProduit
    ORDER BY p.NomProduit
""")

    products = cursor.fetchall()

    cursor.close()
    conn.close()

    return render_template(
        "pers_prod.html",
        products=products
    )

@app.route("/nonpersonalisable_products")
def nonpersonalisable_products():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    cursor.execute("""
    SELECT
        np.IDProduit,
        np.NomProduit,
        np.PrixProduit,
        CASE 
            WHEN COUNT(DISTINCT cnp.IDCommande) >= 5 THEN 1
            ELSE 0
        END AS is_bestseller
    FROM ProduitNonPersonalisable np
    LEFT JOIN CommandeNonPersonalisable cnp
        ON np.IDProduit = cnp.IDProduit
    GROUP BY np.IDProduit, np.NomProduit, np.PrixProduit
    ORDER BY np.NomProduit
""")

    products = cursor.fetchall()

    cursor.close()
    conn.close()

    return render_template(
        "npers_prod.html",
        products=products
    )


@app.route("/product/<id_produit>")
def product_detail(id_produit):
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    cursor.execute("""
        SELECT
            p.IDProduit,
            p.NomProduit,
            p.PrixProduit,
            CASE
                WHEN COUNT(DISTINCT cp.IDCommande) >= 5 THEN 1
                ELSE 0
            END AS is_bestseller
        FROM ProduitPersonalisable p
        LEFT JOIN CommandePersonalisable cp
            ON p.IDProduit = cp.IDProduit
        WHERE p.IDProduit = %s
        GROUP BY p.IDProduit, p.NomProduit, p.PrixProduit
    """, (id_produit,))
    product = cursor.fetchone()

    cursor.execute("""
        SELECT
            p.IDParfum,
            p.NomParfum,
            CASE
                WHEN COUNT(DISTINCT cp.IDCommande) >= 5 THEN 1
                ELSE 0
            END AS is_bestseller
        FROM Parfum p
        LEFT JOIN CommandePersonalisable cp
            ON p.IDParfum = cp.IDParfum
        GROUP BY p.IDParfum, p.NomParfum
        ORDER BY p.NomParfum
    """)
    parfums = cursor.fetchall()

    cursor.execute("""
        SELECT IDDecoration, NomDecoration
        FROM Decoration
        ORDER BY NomDecoration
    """)
    decorations = cursor.fetchall()

    cursor.execute("""
        SELECT DateCommande, COUNT(*) AS nb_orders
        FROM Commande
        WHERE DateCommande IS NOT NULL
        GROUP BY DateCommande
    """)
    rows = cursor.fetchall()

    remaining_places = {}
    full_days = []

    for row in rows:
        date_str = row["DateCommande"].strftime("%Y-%m-%d")
        remaining = 10 - row["nb_orders"]
        remaining_places[date_str] = remaining

        if remaining <= 0:
            full_days.append(date_str)

    cursor.close()
    conn.close()

    if not product:
        return "Produit introuvable", 404
    print("remaining_places =", remaining_places)
    return render_template(
        "product_detail.html",
        product=product,
        parfums=parfums,
        decorations=decorations,
        full_days=full_days,
        remaining_places=remaining_places
    )

@app.route("/nonproduct/<id_produit>")
def non_product_detail(id_produit):
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    cursor.execute("""
        SELECT
            np.IDProduit,
            np.NomProduit,
            np.PrixProduit,
            CASE
                WHEN COUNT(DISTINCT cnp.IDCommande) >= 5 THEN 1
                ELSE 0
            END AS is_bestseller
        FROM ProduitNonPersonalisable np
        LEFT JOIN CommandeNonPersonalisable cnp
            ON np.IDProduit = cnp.IDProduit
        WHERE np.IDProduit = %s
        GROUP BY np.IDProduit, np.NomProduit, np.PrixProduit
    """, (id_produit,))
    product = cursor.fetchone()

    cursor.execute("""
        SELECT DateCommande, COUNT(*) AS nb_orders
        FROM Commande
        WHERE DateCommande IS NOT NULL
        GROUP BY DateCommande
    """)
    rows = cursor.fetchall()

    remaining_places = {}
    full_days = []

    for row in rows:
        date_str = row["DateCommande"].strftime("%Y-%m-%d")
        remaining = 10 - row["nb_orders"]
        remaining_places[date_str] = remaining

        if remaining <= 0:
            full_days.append(date_str)

    cursor.close()
    conn.close()

    if not product:
        return "Produit introuvable", 404

    print("remaining_places =", remaining_places)   
    return render_template(
        "non_product_detail.html",
        product=product,
        full_days=full_days,
        remaining_places=remaining_places
    )


@app.route("/add_product_to_order", methods=["POST"])
def add_product_to_order():
    if "username" not in session:
        return redirect(url_for("account"))

    id_commande = "CMD" + datetime.now().strftime("%Y%m%d%H%M%S")
    id_produit = request.form.get("id_produit")
    date_commande = request.form.get("date_commande")
    texte_personalisable = request.form.get("texte_personalisable", "").strip()
    id_parfum = request.form.get("id_parfum") or None
    id_decoration = request.form.get("id_decoration") or None

    conn = get_db_connection()
    cursor = conn.cursor()

    cursor.execute("""
        INSERT INTO Commande (IDCommande, DateCommande)
        VALUES (%s, %s)
    """, (id_commande, date_commande))

    cursor.execute("""
        INSERT INTO UtilisateurCommande (IDCommande, IDUser)
        VALUES (%s, %s)
    """, (id_commande, session["username"]))

    cursor.execute("""
        INSERT INTO CommandePersonalisable
        (IDCommande, IDProduit, IDParfum, TextePersonalisable, IDDecoration)
        VALUES (%s, %s, %s, %s, %s)
    """, (
        id_commande,
        id_produit,
        id_parfum,
        texte_personalisable if texte_personalisable else None,
        id_decoration
    ))

    conn.commit()
    cursor.close()
    conn.close()

    return redirect(url_for("orders"))

@app.route("/add_non_product_to_order", methods=["POST"])
def add_non_product_to_order():
    if "username" not in session:
        return redirect(url_for("account"))

    id_commande = "CMD" + datetime.now().strftime("%Y%m%d%H%M%S")
    id_produit = request.form.get("id_produit")
    date_commande = request.form.get("date_commande")

    conn = get_db_connection()
    cursor = conn.cursor()

    cursor.execute("""
        INSERT INTO Commande (IDCommande, DateCommande)
        VALUES (%s, %s)
    """, (id_commande, date_commande))

    cursor.execute("""
        INSERT INTO UtilisateurCommande (IDCommande, IDUser)
        VALUES (%s, %s)
    """, (id_commande, session["username"]))

    cursor.execute("""
        INSERT INTO CommandeNonPersonalisable
        (IDCommande, IDProduit)
        VALUES (%s, %s)
    """, (id_commande, id_produit))

    conn.commit()
    cursor.close()
    conn.close()

    return redirect(url_for("orders"))

@app.route("/new_order", methods=["GET", "POST"])
def new_order():
    if "client" not in session:
        return redirect(url_for("client_login"))

    if request.method == "POST":
        order_id = "CMD" + datetime.now().strftime("%Y%m%d%H%M%S")
        product_id = request.form["product_id"]
        order_date = request.form["order_date"]

        conn = get_db_connection()
        cursor = conn.cursor()

        cursor.execute("""
            INSERT INTO Commande (IDCommande, DateCommande)
            VALUES (%s, %s)
        """, (order_id, order_date))

        cursor.execute("""
            INSERT INTO UtilisateurCommande (IDCommande, IDUser)
            VALUES (%s, %s)
        """, (order_id, session["client"]))

        cursor.execute("""
            INSERT INTO CommandePersonalisable (IDCommande, IDProduit)
            VALUES (%s, %s)
        """, (order_id, product_id))

        conn.commit()
        cursor.close()
        conn.close()

        return redirect(url_for("client_page"))

    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    cursor.execute("""
        SELECT IDProduit, NomProduit, PrixProduit
        FROM ProduitPersonalisable
        ORDER BY NomProduit
    """)
    products = cursor.fetchall()

    cursor.close()
    conn.close()

    return render_template("new_order.html", products=products)


# le mode entrepreneur
@app.route("/entrepreneur", methods=["GET", "POST"])
def entrepreneur_login():
    message = ""

    if request.method == "POST":
        password = request.form["password"]

        if password == ENTREPRENEUR_PASSWORD:
            session["entrepreneur"] = True
            return redirect(url_for("entrepreneur_dashboard"))
        else:
            message = "Incorrect password."

    return render_template("entrepreneur_login.html", message=message)


@app.route("/entrepreneur/dashboard")
def entrepreneur_dashboard():
    if not session.get("entrepreneur"):
        return redirect(url_for("entrepreneur_login"))

    return render_template("entrepreneur_dashboard.html")


@app.route("/entrepreneur/add_product", methods=["GET", "POST"])
def add_product():
    if not session.get("entrepreneur"):
        return redirect(url_for("entrepreneur_login"))

    if request.method == "POST":
        product_type = request.form["product_type"]
        product_id = request.form["product_id"]
        name = request.form["name"]
        price = request.form["price"]
        poids = request.form.get("poids")
        capacite = request.form.get("capacite")

        conn = get_db_connection()
        cursor = conn.cursor()

        if product_type == "personalisable":
            cursor.execute("""
                INSERT INTO ProduitPersonalisable
                (IDProduit, NomProduit, PrixProduit, Poids, Capacite)
                VALUES (%s, %s, %s, %s, %s)
            """, (product_id, name, price, poids, capacite))
        else:
            cursor.execute("""
                INSERT INTO ProduitNonPersonalisable
                (IDProduit, NomProduit, PrixProduit, Poids, Capacite)
                VALUES (%s, %s, %s, %s, %s)
            """, (product_id, name, price, poids, capacite))

        conn.commit()
        cursor.close()
        conn.close()

        return redirect(url_for("entrepreneur_dashboard"))

    return render_template("add_product.html")


@app.route("/entrepreneur/orders", methods=["GET", "POST"])
def entrepreneur_orders():
    if not session.get("entrepreneur"):
        return redirect(url_for("entrepreneur_login"))

    personalisable_orders = []
    non_personalisable_orders = []

    if request.method == "POST":
        chosen_date = request.form["chosen_date"]

        conn = get_db_connection()
        cursor = conn.cursor(dictionary=True)

        cursor.execute("""
            SELECT 
                c.IDCommande,
                c.DateCommande,
                u.IDUser,
                u.Nom,
                u.Prenom,
                u.AdresseLivraison,
                pp.NomProduit,
                pp.PrixProduit,
                cp.TextePersonalisable,
                p.NomParfum,
                d.NomDecoration
            FROM Commande c
            JOIN UtilisateurCommande uc ON c.IDCommande = uc.IDCommande
            JOIN Utilisateur u ON uc.IDUser = u.IDUser
            JOIN CommandePersonalisable cp ON c.IDCommande = cp.IDCommande
            JOIN ProduitPersonalisable pp ON cp.IDProduit = pp.IDProduit
            LEFT JOIN Parfum p ON cp.IDParfum = p.IDParfum
            LEFT JOIN Decoration d ON cp.IDDecoration = d.IDDecoration
            WHERE c.DateCommande = %s
            ORDER BY c.IDCommande
        """, (chosen_date,))

        personalisable_orders = cursor.fetchall()

        cursor.execute("""
            SELECT 
                c.IDCommande,
                c.DateCommande,
                u.IDUser,
                u.Nom,
                u.Prenom,
                u.AdresseLivraison,
                pnp.NomProduit,
                pnp.PrixProduit,
                cnp.TextePersonalisable
            FROM Commande c
            JOIN UtilisateurCommande uc ON c.IDCommande = uc.IDCommande
            JOIN Utilisateur u ON uc.IDUser = u.IDUser
            JOIN CommandeNonPersonalisable cnp ON c.IDCommande = cnp.IDCommande
            JOIN ProduitNonPersonalisable pnp ON cnp.IDProduit = pnp.IDProduit
            WHERE c.DateCommande = %s
            ORDER BY c.IDCommande
        """, (chosen_date,))

        non_personalisable_orders = cursor.fetchall()

        cursor.close()
        conn.close()

    return render_template(
        "entrepreneur_orders.html",
        personalisable_orders=personalisable_orders,
        non_personalisable_orders=non_personalisable_orders
    )


if __name__ == "__main__":
    app.run(debug=True)
