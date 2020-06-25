# Purpose: to replace amino acid 1-letter code with physicochemical property scores
# Reference: Granthan R. Science 1974, 185: 862-864.

# Molecular volumn
Vol <- function(res){
  switch(as.character(res),
         "S" = 32,
         "R" = 124,
         "L" = 111,
         "P" = 32.5,
         "T" = 61,
         "A" = 31,
         "V" = 84,
         "G" = 3,
         "I" = 111,
         "F" = 132,
         "Y" = 136,
         "C" = 55,
         "H" = 96,
         "Q" = 85,
         "N" = 56,
         "K" = 119,
         "D" = 54,
         "E" = 83,
         "M" = 105,
         "W" = 170,
         "-" = "NA")
}

# Composition
Comp <- function(res){
  switch(as.character(res),
         "S" = 1.42,
         "R" = 0.65,
         "L" = 0,
         "P" = 0.39,
         "T" = 0.71,
         "A" = 0,
         "V" = 0,
         "G" = 0.74,
         "I" = 0,
         "F" = 0,
         "Y" = 0.20,
         "C" = 2.75,
         "H" = 0.58,
         "Q" = 0.89,
         "N" = 1.33,
         "K" = 0.33,
         "D" = 1.38,
         "E" = 0.92,
         "M" = 0,
         "W" = -0.13,
         "-" = "NA")
}

# Polarity
Polar <- function(res){
  switch(as.character(res),
         "S" = 9.2,
         "R" = 10.5,
         "L" = 4.9,
         "P" = 8.0,
         "T" = 8.6,
         "A" = 8.1,
         "V" = 5.9,
         "G" = 9.0,
         "I" = 5.2,
         "F" = 5.2,
         "Y" = 6.2,
         "C" = 5.5,
         "H" = 10.4,
         "Q" = 10.5,
         "N" = 11.6,
         "K" = 11.3,
         "D" = 13.0,
         "E" = 12.3,
         "M" = 5.7,
         "W" = 5.4,
         "-" = "NA")
}


# Fucntion to replace residue 1-letter code with the above scores
residProps <- function(data, score){
  temp <- matrix(nrow=nrow(data), ncol = ncol(data))
  for (j in c(1:nrow(data))){
    temp[j,] <- as.numeric(sapply(data[j, 1:ncol(data)], score)) 
  }
  new <- as.data.frame(temp)
  rownames(new) <- row.names(data)
  colnames(new) <- paste(colnames(data), score, sep = "") # tag column names
  return(new)
}
