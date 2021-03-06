#!/bin/bash

# Run all Gaussian com files in a specified directory

for f in $1*; do
  if [ -f "$f" ]; then
  	if [ ${f: -4} == ".com" ]; then
    	echo "$f"

    	sbatch -J ${f:0:8} run_com.sh $f
	fi
  fi
done
