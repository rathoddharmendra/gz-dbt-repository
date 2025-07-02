{% test not_null(model, column_name) %}
    select 
        count(*)
    from {{ model }}
    where {{ column_name }} is null
{% endtest %}

# If test returns no rows, test passes!