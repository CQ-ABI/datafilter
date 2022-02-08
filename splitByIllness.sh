infile="data/example.csv"
metric="Deaths"
for illness in "Ebola" "trematodiases" "Leprosy" "Zika"; do
  outfile=${illness}.csv
  head -n 1 ${infile} > ${outfile}
  grep ${illness} ${infile} | grep ${metric} >> ${outfile}
done
