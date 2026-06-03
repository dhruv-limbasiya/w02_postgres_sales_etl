import pandas as pd

def load(df):
    df.to_csv("./data/processed/superstore_clean.csv")
    
    return df