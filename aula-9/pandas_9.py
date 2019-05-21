import pandas as pd
from db import DemoDB

database = DemoDB()

database.tables

album = database.tables.Album.all()

album.head()

artist = database.tables.Artist.all()

album_artist = pd.merge(artist, album)

album_artist = pd.merge(artist, album, on = "ArtistId")

album.rename(columns = {'ArtistId', 'Artist_id'}, inplace = True)
album.head()


album_artist = pd.merge(album, artist,
                        left_on = 'Artist' ?????   
                )

vendas1 = pd.DataFrame({
                'nome' : ['Lucas', 'Vinicius'],
                'codigo' : [10 ,20]
            })

vendas2 = pd.DataFrame({
                'nome' : ['Ana', 'Vinicius', 'Joana'],
                'valor' : [5000,3500,2020]
            })

vendas_total = pd.merge(vendas1, vendas2, on = "nome",
                        )













