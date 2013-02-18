#!/bin/bash

PY_V=2.6 # Python version
ST_V=0.6c11 # setuptools version
PIP_V=1.2.1 # PIP version
ST_FILENAME=setuptools-$ST_V-py$PY_V.egg
PIP_FILENAME=pip-$PIP_V.tar.gz

# Installation de setuptools
curl http://pypi.python.org/packages/$PY_V/s/setuptools/$ST_FILENAME -o /tmp/$ST_FILENAME
chmod +x /tmp/$ST_FILENAME
/tmp/$ST_FILENAME
rm /tmp/$ST_FILENAME

# Installation de PIP
curl http://pypi.python.org/packages/source/p/pip/$PIP_FILENAME -o /tmp/$PIP_FILENAME
cd /tmp
tar xvzf $PIP_FILENAME
cd pip-$PIP_V
python setup.py install
