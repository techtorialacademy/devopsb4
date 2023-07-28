#!/bin/bash

echo "All servers that are up:"
grep -E ", up," serverreport.txt


echo "All servers that utilizes the CPU more than %50"

grep -E "cpu=(5[1-9]|[6-9][0-9]|100)" serverreport.txt


echo "All servers with less than 40% memory usage:"
grep -E "mem=([1-3][0-9]|[0-9])%" serverreport.txt

echo "All servers with less than 40% memory usage and more than 50% disk usage"
grep -E "mem=([1-3][0-9]|[0-9])%" serverreport.txt | \

grep -E "disk=(5[1-9]|[6-9][0-9]|100)"
