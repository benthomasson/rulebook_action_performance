#!/bin/bash
ulimit -Sn 10000
#Argtest
#

now=$(date +"%Y%m%d%H%M%S")

./perf_test.py "results/rulebook${now}.csv" x x x x --only-header
for n in 1 10 100 1000
do
./perf_test.py "results/rulebook${now}.csv" "ansible-rulebook -A rule_action --rulebook rulebooks/post${n}.yml" ansible-rulebook post${n}.yml ${n} --no-header
done
