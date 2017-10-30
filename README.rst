Fluentd Agent
=============

Formula to install and configure Fluentd agent

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.
    
    
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
