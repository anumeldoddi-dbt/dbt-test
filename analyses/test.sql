

{%- set animals = ['tiger','lion','snake','horse'] -%}

{%- for animal in animals -%}
    {%- if animal == 'horse' -%}
        {%- set animal_type = 'Farm Animal' -%}
    {%- else -%}
        {%- set animal_type = 'Wild animal' -%}
    {% endif %}
    the {{ animal }} is {{animal_type}}
{% endfor %}