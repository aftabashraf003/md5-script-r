#Please enter file path
filepath="Md5sum.txt"

#reading the file name
con = file(filepath, "r")
#Checking each line in the text file using the md5sum check
while ( TRUE ) {
  line = readLines(con, n = 1)
  if ( length(line) == 0 ) {
    break
  }
  system(paste("echo",line,"| md5sum -c"))
}
  
close(con)
