import pandas as pd
from database import engine

def load(df):
    df.to_sql(name="stg_sales",con=engine)
    return df