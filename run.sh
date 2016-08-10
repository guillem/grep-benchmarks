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
rm -f grepc.class
cd ..
echo

# Go is different :P
echo go/GrepC.go
cd go
go build -o GrepC.exe GrepC.go
./GrepC.exe $1 $2
rm -f GrepC.exe
cd ..
echo

