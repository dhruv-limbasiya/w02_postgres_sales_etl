import pandas as pd

def transform(df):
    df.columns = (df.columns.str.strip().str.replace(" ","_").str.lower())
    
    df = df.drop("postal_code")
    
    df["order_date"] = pd.to_datetime(df["order_date"])
    df["ship_date"] = pd.to_datetime(df["ship_date"])
    
    df["year"] = df["order_date"].dt.year
    df["month"] = df["order_date"].dt.month
    df["quarter"] = df["order_date"].dt.quarter