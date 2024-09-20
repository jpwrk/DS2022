#!/bin/bash

wget https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

tar -xzf lab3-bundle.tar.gz

cat lab3_data.tsv | tr -s '\n' > data_file.tsv

tr '\t' ',' < data_file.tsv > data_file.csv

echo line1/nline2 | wc -l data_file.csv

tar -czf converted-archive.tar.gz data_file.csv
