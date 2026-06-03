from sqlalchemy import create_engine

db_url = "postgresql://postgres:_dhruv._.9@localhost:5432/superstore_dw"
engine = create_engine(db_url)