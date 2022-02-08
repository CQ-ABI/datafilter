infile="data/example.csv"
metric="Deaths"
illness="Ebola"
outfile=${illness}.csv
head -n 1 ${infile} > ${outfile}
grep ${illness} ${infile} | grep ${metric} >> ${outfile}
