#Sources
{%- if salt['pillar.get']('tdagent:sources', False) %}
{%- set sources = salt['pillar.get']('tdagent:sources', {}) %}
  {% for name, item in sources.items() -%}
<source>
    {% for key, val in item.items() -%}
  {{ key }} {{ val }}
    {% endfor -%}
</source>
  {%- endfor -%}
{%- endif %}

# Matches
{%- if salt['pillar.get']('tdagent:matches', False) %}
{%- set matches = salt['pillar.get']('tdagent:matches', {}) %}
  {% for name, item in matches.items() -%}
<match **>
    {% for key, val in item.items() -%}
      {%- if val is mapping %}
  <{{key}}>
        {% for key2, val2 in val.items() -%}
    {{ key2 }} {{ val2 }}
        {% endfor -%}
  </{{key}}>
      {%- else %}
  {{- key }} {{ val }}
      {%- endif %}
    {% endfor -%}
</match>
  {% endfor -%}
{%- endif %}
