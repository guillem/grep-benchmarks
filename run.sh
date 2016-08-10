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

# Go is different :P
echo go/grepc.go
cd go
go build -o grepc.exe grepc.go
./grepc.exe $1 $2
rm -f grepc.exe
cd ..

