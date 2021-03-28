import mysql.connector

mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "********",
    database = "classicmodels"
)

my_cursor = mydb.cursor()

#with open('play.sql') as f:
    #my_cursor.execute(f.read().decode('utf-8'), multi=True)


with open("play.sql") as f:  
     query = f.readlines() 
     for sql in query:
         execute = my_cursor.execute(sql)