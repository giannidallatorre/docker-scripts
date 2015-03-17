#!/bin/bash
set -ex

## Run puppet
git clone git://github.com/cnaf/ci-puppet-modules.git /ci-puppet-modules
puppet apply --modulepath=/ci-puppet-modules/modules:/etc/puppet/modules/ /manifest-elasticsearch.pp

## Install minimal utils
#yum -y install nc mysql $JAVA_PACKAGE
#java -version

## Clean things up
yum clean all
