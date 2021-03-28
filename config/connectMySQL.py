import mysql.connector 

mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "********"
)

my_cursor = mydb.cursor()

sql_file = open("play.sql")
sql_as_string = sql_file.read()

holder = cursor.executescript(sql_as_string)

print(holder)