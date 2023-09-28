import json
from prettytable import PrettyTable
import os

def read_json_file(file_path):
    try:
        with open(file_path, 'r') as json_file:
            data = json.load(json_file)
        return data
    except Exception as e:
        print(f"Error reading {file_path}: {str(e)}")
        return None

def print_json_data_as_table(json_data):
    if json_data:
        table = PrettyTable()
        table.field_names = json_data[0].keys()
        
        for entry in json_data:
            table.add_row(entry.values())
        
        print(table)

def print_json_as_table(json_files, base_path):
    paths = [base_path + json_file for json_file in json_files]
    
    for file_path in paths:
        if os.path.exists(file_path):
            json_data = read_json_file(file_path)
            if json_data:
                file_name = file_path.split('/')[-1].replace('_schema.json','')
                print(f"{file_name} data schema:\n")
                print_json_data_as_table(json_data)
                print("\n" + '*'*270 + "\n")
        else:
            print(f"File not found: {file_path}")