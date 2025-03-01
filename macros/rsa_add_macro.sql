{% macro rsa_add_macro(column_name) -%}
({{column_name}}/column_name)::int
{%- endmacro %}
