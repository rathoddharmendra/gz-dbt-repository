{% macro create_product_id(model, color) %}
        CONCAT({{ model }}, "_", {{ color }})
{% endmacro %}
