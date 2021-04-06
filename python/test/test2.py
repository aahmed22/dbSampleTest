from sqlalchemy import create_engine
from sqlalchemy import text
import pymysql

engine = create_engine("mysql+pymysql://root:********@localhost/classicmodels")
connection = engine.connect()

test = text("SELECT * FROM employees")
result = connection.execute(test).cursor()

print(result)
