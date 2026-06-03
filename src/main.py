from extract import extract
from transform import transform
from load import load

raw_data = extract("./data/raw/Global_Superstore2.csv")
clean_df = transform(raw_data)
load(clean_df)

print(clean_df.columns.to_list())