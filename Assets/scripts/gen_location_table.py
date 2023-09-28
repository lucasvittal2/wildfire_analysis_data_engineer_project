import json
import pandas as pd
import re
from unidecode import unidecode
import unicodedata

def strip_accents(s):
   return ''.join(c for c in unicodedata.normalize('NFD', s)
                  if unicodedata.category(c) != 'Mn')

#load json file
with open('G:/Meu Drive/Estudos/Pos-graduacao - Ciencia de Dados e  Analytics/Sprints/Sprint III - Data Engineering/MVP/wild fire analysis along last decade/Assets/Data/locations/cities.json', encoding='utf-8') as f:
    cities = json.load(f)
    
#transform to dataframe  
df_cities = pd.DataFrame(cities)


#generate states part location table
states = df_cities[['state_id','state_name']]
states['location_id'] = states.apply(lambda row:  strip_accents(row['state_name'].replace('\'', '').replace('’','')[:2].upper())  + str(row['state_id']), axis=1)
states.drop('state_id', axis=1, inplace=True)
states.columns = ['location_id', 'location_name']
states['location_type'] = 'state'




#generate cities part location table
cities = df_cities[['id','state_id','name']]
pattern = r'[\u0300-\u036f]'
cities['location_id'] = cities.apply(lambda row:  strip_accents(row['name'].replace('\'', '').replace('’','')[:2].upper()) + str(row['state_id']) + str(row['id']), axis=1)
cities = cities[['location_id','name']]
cities.columns = ['location_name', 'location_id']
cities['location_type'] = 'city'    

#generate location table
locations = pd.concat([states, cities])
print(locations.columns)
locations = locations.drop_duplicates(subset=['location_id'])
locations.columns =['location_name','location_id', 'location_type']
#save table on csv file
locations.to_csv(
    'G:/Meu Drive/Estudos/Pos-graduacao - Ciencia de Dados e  Analytics/Sprints/Sprint III - Data Engineering/MVP/wild fire analysis along last decade/Assets/Data/locations/locations.csv',
    encoding='utf-8',
    sep=',')