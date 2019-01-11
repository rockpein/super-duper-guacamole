import sqlite3
import pandas as pd
connection = sqlite3.connect("main_database.db")
c = connection.cursor()
username_cookie = "admin"
c.execute("SELECT m.title, m.genres, m.vote_average, m.vote_count, m.release_date, m.adult FROM movie_database_c AS m, Wishlist AS w, users AS u JOIN Wishlist movie_database_c ON w.Movie_ID = m.id JOIN Wishlist users ON w.USER_ID = u.user_id WHERE u.username = (?)", (username_cookie,))
result = c.fetchall()
print(result[0])
