#!/bin/bash -ex
time ansible-rulebook --rulebook rulebooks/parallel_post10000.yml -A rule_action
