#! /usr/bin/bash

file=$1

tail +2 $file|sort -k2 -nr -t"|" >sorted.dat

tr "a-z" "A-Z" <sorted.dat>uppercase.dat

sort -u uppercase.dat>sorted_uppercase.dat
