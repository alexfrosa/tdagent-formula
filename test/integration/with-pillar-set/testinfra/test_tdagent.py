import testinfra

def test_service_is_running_and_enabled(host):
    tdagent = host.service('td-agent')
    assert tdagent.is_running
    assert tdagent.is_enabled
