import pandas as pd

def transform(df):
    df.columns = (df.columns.str.strip().str.replace(" ","_").str.lower())
    df.columns = (df.columns.str.strip().str.replace("-","_").str.lower())
    
    df = df[df["sales"] >= 0]
        
    df = df.drop_duplicates(keep = "first")
    
    df = df.drop(columns="postal_code")
    
    df["order_date"] = pd.to_datetime(df["order_date"])
    df["ship_date"] = pd.to_datetime(df["ship_date"])
    
    return df