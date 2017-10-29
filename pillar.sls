td-agent:
  plugins:
    - fluent-plugin-netflow
    - fluent-plugin-elasticsearch
  sources:
    netflow:
      type: netflow
      tag: elasticsearch
      bind: 0.0.0.0
      port: 2055
  matches:
    elasticsearch:
      type: elasticsearch
      logstash_format: 'true'
      include_timestamp: 'true'
      logstash_prefix: logstash
      host: 1.2.3.4 
      port: 9200
