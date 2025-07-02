-- {% macro create_product_id(model, color) %}
--         CONCAT({{ model }}, "_", {{ color }})
-- {% endmacro %}

{% macro margin_percent(margin,revenue) %}
    SAFE_DIVIDE(margin,revenue)
{% endmacro %}