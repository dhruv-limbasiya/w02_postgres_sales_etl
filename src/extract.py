import pandas as pd

def extract(file_path):
    df = pd.read_csv(file_path, encoding="latin1")
    
    return df