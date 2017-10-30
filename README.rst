Fluentd Agent
=============

Formula to install and configure Fluentd agent

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.
    
Available states
================

.. contents::
    :local:

``td-agent``
------------

Shortcut for installing the td-agent package, configuring the service and configuring td-agent.

``td-agent.install``
---------------------

Installs the td-agent package

``td-agent.config``
--------------------

Configures td-agent input/output plugins

Requirements
------------

* Python
* Ruby
* Docker

::

    pip install -r requirements.txt
    gem install bundler
    bundle install
    bundle exec kitchen test
