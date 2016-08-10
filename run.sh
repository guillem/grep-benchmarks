#!/bin/bash

for F in */grepc.*; do
	echo $F
	$F $1 $2
	echo
done

# Java is different :P
echo java/GrepC.java
cd java
javac GrepC.java
java GrepC $1 $2
cd ..

