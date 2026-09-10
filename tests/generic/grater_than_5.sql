{% test greater_than_five(model, columnname) %}
    select {{ columnname }} from {{ model }} where {{ columnname }} <= 5
{% endtest %}

