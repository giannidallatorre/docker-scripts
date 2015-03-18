#!/bin/bash
set -ex

## Run puppet
git clone -b elasticsearch git://github.com/giannidallatorre/ci-puppet-modules.git /ci-puppet-elastic
puppet apply --modulepath=/ci-puppet-modules/modules:/etc/puppet/modules:/ci-puppet-elastic/modules/ /manifest-elasticsearch.pp

## Install minimal utils
#yum -y install nc mysql $JAVA_PACKAGE
#java -version

## Clean things up
yum clean all
