head -n 1 data/example.csv > out.csv
grep "Ebola" data/example.csv | grep "Deaths" >> out.csv
