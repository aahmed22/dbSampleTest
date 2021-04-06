from sqlalchemy import create_engine

engine = create_engine('mysql+mysqlconnector://root:password@localhost/classicmodels')

connection = engine.connect()

print(connection)
