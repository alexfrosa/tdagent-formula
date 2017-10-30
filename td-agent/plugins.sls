{% if salt['pillar.get']('tdagent:plugins', False) -%}
{%- set plugins = salt['pillar.get']('tdagent:plugins', {}) %}
  {%- for name in plugins %}
tdagent_install_plugin_{{ name }}:
  cmd.run:
    - name: /opt/td-agent/embedded/bin/fluent-gem install {{ name }}
    - unless: test -f /opt/td-agent/embedded/lib/ruby/gems/2.1.0/gems/{{ name }}*
  {% endfor %}
{% endif -%}
