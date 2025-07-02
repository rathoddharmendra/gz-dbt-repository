def model(dbt, session):
   dbt.config(submission_method="bigframes")
   bdf = dbt.ref("my_sql_model") #loading from prev step
   return bdf