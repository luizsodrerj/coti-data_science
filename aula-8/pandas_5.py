# instalar lib sb.py
# pip install db.py

from db import DB

# carregando os dados do sqlite p o python

database = DB(filename = 'logs.sqlite3',
              dbtype = 'sqlite'
            )

database.tables
