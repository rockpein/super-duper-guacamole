#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import sqlite3
connectionMovies = sqlite3.connect("main_database.db")
cMovies = connectionMovies.cursor()
cMovies.execute("SELECT cast(title, adult,vote_average, vote_count as text) FROM movie_database_c")
result = cMovies.fetchall()
print(result)
