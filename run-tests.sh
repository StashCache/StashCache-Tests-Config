#!/bin/sh -x

stash-test -c tester.conf run

condor_wait tests/submit.dag.dagman.log
