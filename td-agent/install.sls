{% from "td-agent/map.jinja" import tdagent with context %}

td-agent_install:
  cmd.run:
    - name: curl -L {{ salt['pillar.get']('td-agent:installation_script_url', 'https://toolbelt.treasuredata.com/sh/install-ubuntu-xenial-td-agent2.sh') }} | sh
    - unless: test -f {{ tdagent.config_path }} 
