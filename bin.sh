#!/bin/bash

read -p 'Target: ' target
read -p 'Connections: ' connections
connections=${connections:-1000}

read -p 'Time: ' period
period=${period:-360s}

echo $connections
echo $period
./install.sh;
./runner.sh $target $connections $period
