# Super Duper Minikuber

[![Build Status](https://travis-ci.com/robcharlwood/super-duper-minikuber.svg?branch=master)](https://travis-ci.com/robcharlwood/super-duper-minikuber/) [![Coverage Status](https://coveralls.io/repos/github/robcharlwood/super-duper-minikuber/badge.svg?branch=master)](https://coveralls.io/github/robcharlwood/super-duper-minikuber?branch=master)

A simple Python 3 Flask app with code to run the app in a container in minikube with load balancing

## Initial checkout and setup of codeabase

* Open terminal and move to a suitable directory on your machine
* Run ``git clone git@github.com:robcharlwood/super-duper-minikuber.git``
* Run ``cd super-duper-minikuber``

### Installation

To install the project locally you need to run ``make install``. You can also pass ``VENV``,
``PYTHON_EXE`` and ``ANSIBLE_VERSION`` keyword arguments to the make file to configure the installation e.g

* ``make install`` - Installs dependencies with defaults
* ``make install VENV=foo`` - Installs into a virtualenv named ``foo``
* ``make install PYTHON_EXE=python3.7`` - Installs with a specific python interpreter, example values might be ``python`` or ``python3.6``.

## Versioning

This project uses [git](https://git-scm.com/) for versioning. For the available versions,
see the [tags on this repository](https://github.com/robcharlwood/super-duper-minikuber/tags).

## Authors

* Rob Charlwood - Bitniftee Limited

## Changes

Please see the [CHANGELOG.md](https://github.com/robcharlwood/super-duper-minikuber/blob/master/CHANGELOG.md) file additions, changes, deletions and fixes between each version

## License

This project is licensed under the MIT License - see the [LICENSE.md](https://github.com/robcharlwood/super-duper-minikuber/blob/master/LICENSE) file for details
