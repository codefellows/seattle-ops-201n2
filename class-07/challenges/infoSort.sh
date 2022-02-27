#!/bin/bash

compName=$(lshw | grep -i -m1 "")
echo "Name of the Computer: $compName"