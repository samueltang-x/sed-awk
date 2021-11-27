#!/bin/bash

sort -t, -k4 $* |
awk -F, '
  $4 == LastState {
    print "\t" $1
  }
  $4 != LastState {
    LastState = $4
    print $4
    print "\t" $1
  }'
