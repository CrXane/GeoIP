#!/bin/bash

for f in connections/*; do
 while IFS=read -r i; do
  sudo $i
 done< <(cat $f)
done

iptables -P INPUT DROP
