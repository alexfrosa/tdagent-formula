{% from "td-agent/map.jinja" import tdagent with context %}

td-agent_config:
  file.managed:
    - name: {{ tdagent.config_path }}
    - source: salt://td-agent/files/td-agent.conf.tpl
    - mode: 0644
    - template: jinja

service_reload:
  service.running:
    - name: {{ tdagent.service }}
    - watch:
      - file: td-agent_config 
