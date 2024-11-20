============================
Duktape Configuration Guide
============================

To configure on Ubuntu:

  $ sudo apt install python2
  $ sudo apt install python-pip
  $ pip2 install PyYAML
  $ cd duktape-2.7.0
  $ python2 tools/configure.py --source-directory src-input --output-directory src-custom --config-metadata config -DDUK_USE_FASTINT

