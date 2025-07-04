Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [dbt community](https://getdbt.com/community) to learn from other analytics engineers
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices


### commands to try:
`dbt build --select stock_sales.sql+
dbt run --select +stock_sales.sql
dbt docs generate
dbt source freshness
`loaded_at_field: CAST(date_date as TIMESTAMP)
    config:
        freshness:
        warn_after:
            count: 90
            period: day`

dbt ls --resource-type snapshot
dbt debug

Does DBT manages the cost inbuilt or we need to do it? For instance, when there is no change but dbt creates a new view or skips it?
- dbt deps -- to install packages