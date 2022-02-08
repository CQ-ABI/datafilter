infile="data/example.csv"
metric="Deaths"
for illness in "Ebola" "trematodiases" "Leprosy" "Zika"; do
  echo -n "Splitting out ${metric} data for ${illness}... "
  outfile=${illness}.csv
  head -n 1 ${infile} > ${outfile}
  grep ${illness} ${infile} | grep ${metric} >> ${outfile}
  lines=`wc -l ${outfile} | cut -d " " -f 1`
  echo "done, extracted ${lines} entries into ${outfile}."
done
