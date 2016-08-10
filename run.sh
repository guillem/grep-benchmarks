#!/bin/bash

for F in */grepc.*; do
	echo $F
	$F $1 $2
	echo
done

