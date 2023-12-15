#!/bin/bash

step="Step 2"
function funct {
	echo $step
	return
}

#program starts here

echo "Step 1"
funct
echo "Step 3"

foo="something cool"
echo $foo

foo=0 # global variable foo 

funct_1 () {
	foo # variable foo local to funct_1
	foo=1
	echo "funct_1: foo = $foo"
}

funct_2 () {
	foo # Variable foo local to function funct_2
	foo=2
	echo "funct_2: foo = $foo"
}

echo "global: foo = $foo"
funct_1
echo "global: foo = $foo"
funct_2
echo "global: foo = $foo"