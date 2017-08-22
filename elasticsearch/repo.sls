elasticsearch_repo:
  pkgrepo.managed:
    - humanname: Elasticsearch 5.
    {% if grains.get('os_family') == 'Debian' %}
    - name: deb https://artifacts.elastic.co/packages/5.x/apt stable main
    - dist: stable
    - file: /etc/apt/sources.list.d/elasticsearch.list
    - keyid: D88E42B4
    - keyserver: keyserver.ubuntu.com
    - clean_file: true
    {% elif grains['os_family'] == 'RedHat' %}
    - name: elasticsearch
    - baseurl: http://packages.elastic.co/elasticsearch/2.x/centos
    - enabled: 1
    - gpgcheck: 1
    - gpgkey: http://packages.elastic.co/GPG-KEY-elasticsearch
    {% endif %}
