#! /bin/bash -eu

export BOSH_INIT_LOG_LEVEL='Debug'
export BOSH_INIT_LOG_PATH='./run.log'
bosh-init deploy bosh.yml
