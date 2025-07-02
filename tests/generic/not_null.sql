{% test table_not_null(model, column_name) %}
    select 
        *
    from {{ model }}
    where {{ column_name }} is null
{% endtest %}

# If test returns no rows, test passes!