OPTIONS (DIRECT=TRUE)
load data
infile '%DEMODIRECTORY%\%USER%\SampleData\ImageList.dat'
append
into table %DATA_STAGING_TABLE% (
  IMAGE_PATH CHAR(120),
  IMAGE      LOBFILE(IMAGE_PATH) TERMINATED BY EOF
)
