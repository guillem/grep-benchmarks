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

# C++ is different :P
echo c++/GrepC.cpp
cd c++
g++ -std=c++11 -o GrepC.exe GrepC.cpp 
./GrepC.exe $1 $2
rm -f GrepC.exe
cd ..
echo

# Rust is different :P
echo rust/GrepC.rs
cd rust
rustc -O -o GrepC.exe GrepC.rs
./GrepC.exe $1 $2
rm -f GrepC.exe
cd ..
echo

