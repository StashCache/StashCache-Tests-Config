#!/bin/sh -x

echo "ssh_key = $DEPLOY_KEY" >> tester.conf
stash-test -c tester.conf run

condor_wait tests/submit.dag.dagman.log
