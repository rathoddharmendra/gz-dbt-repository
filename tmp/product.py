def model(dbt, session):
    dbt.config(
        materialized="table"
    )
    df = session.read_table("raw.product")
    print(df)
    return df