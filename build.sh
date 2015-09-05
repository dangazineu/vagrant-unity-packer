#!/bin/bash

if [ -z "$VAGRANT_HOME" ]; then
    export VAGRANT_HOME=~/.vagrant.d 
fi

UBUNTU_TRUSTY64_VERSION=20150902.0.1

export UBUNTU_TRUSTY64_VERSION=$UBUNTU_TRUSTY64_VERSION

vagrant box add ubuntu/trusty64 --box-version $UBUNTU_TRUSTY64_VERSION

packer build build.json