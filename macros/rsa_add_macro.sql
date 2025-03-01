{% macro rsa_add_macro(column_name) -%}
({{column_name}}/100)::int
{%- endmacro %}
