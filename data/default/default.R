
# Set working directory
# setwd()


new_data <- read.table('default.dat', sep=' ')
names(new_data) <- c('R0000100',
  'R0000300',
  'R0000500',
  'R0000600',
  'R0173600',
  'R0214700',
  'R0214800')


# Handle missing values

  new_data[new_data == -1] = NA  # Refused 
  new_data[new_data == -2] = NA  # Dont know 
  new_data[new_data == -3] = NA  # Invalid missing 
  new_data[new_data == -4] = NA  # Valid missing 
  new_data[new_data == -5] = NA  # Non-interview 


# If there are values not categorized they will be represented as NA

vallabels = function(data) {
  data$R0000300[17.0 <= data$R0000300 & data$R0000300 <= 99999.0] <- 17.0
  data$R0000300 <- factor(data$R0000300, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0), 
    labels=c("0: < 1",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17 TO 99999: 17+"))
  data$R0000500[0.0 <= data$R0000500 & data$R0000500 <= 56.0] <- 0.0
  data$R0000500[73.0 <= data$R0000500 & data$R0000500 <= 99999.0] <- 73.0
  data$R0000500 <- factor(data$R0000500, 
    levels=c(0.0,57.0,58.0,59.0,60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0), 
    labels=c("0 TO 56: < 57",
      "57",
      "58",
      "59",
      "60",
      "61",
      "62",
      "63",
      "64",
      "65",
      "66",
      "67",
      "68",
      "69",
      "70",
      "71",
      "72",
      "73 TO 99999: 73+"))
  data$R0000600[0.0 <= data$R0000600 & data$R0000600 <= 13.0] <- 0.0
  data$R0000600[30.0 <= data$R0000600 & data$R0000600 <= 99999.0] <- 30.0
  data$R0000600 <- factor(data$R0000600, 
    levels=c(0.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0,24.0,25.0,26.0,27.0,28.0,29.0,30.0), 
    labels=c("0 TO 13: < 14",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20",
      "21",
      "22",
      "23",
      "24",
      "25",
      "26",
      "27",
      "28",
      "29",
      "30 TO 99999: 30+"))
  data$R0173600 <- factor(data$R0173600, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0), 
    labels=c("CROSS MALE WHITE",
      "CROSS MALE WH. POOR",
      "CROSS MALE BLACK",
      "CROSS MALE HISPANIC",
      "CROSS FEMALE WHITE",
      "CROSS FEMALE WH POOR",
      "CROSS FEMALE BLACK",
      "CROSS FEMALE HISPANIC",
      "SUP MALE WH POOR",
      "SUP MALE BLACK",
      "SUP MALE HISPANIC",
      "SUP FEM WH POOR",
      "SUP FEMALE BLACK",
      "SUP FEMALE HISPANIC",
      "MIL MALE WHITE",
      "MIL MALE BLACK",
      "MIL MALE HISPANIC",
      "MIL FEMALE WHITE",
      "MIL FEMALE BLACK",
      "MIL FEMALE HISPANIC"))
  data$R0214700 <- factor(data$R0214700, 
    levels=c(1.0,2.0,3.0), 
    labels=c("HISPANIC",
      "BLACK",
      "NON-BLACK, NON-HISPANIC"))
  data$R0214800 <- factor(data$R0214800, 
    levels=c(1.0,2.0), 
    labels=c("MALE",
      "FEMALE"))
  return(data)
}

varlabels <- c("ID# (1-12686) 79",
  "DATE OF BIRTH - MONTH 79",
  "DATE OF BIRTH - YR 79",
  "AGE OF R 79",
  "SAMPLE ID  79 INT",
  "RACL/ETHNIC COHORT /SCRNR 79",
  "SEX OF R 79"
)


# Use qnames rather than rnums

qnames = function(data) {
  names(data) <- c("CASEID_1979",
    "Q1-3_A~M_1979",
    "Q1-3_A~Y_1979",
    "FAM-1B_1979",
    "SAMPLE_ID_1979",
    "SAMPLE_RACE_78SCRN",
    "SAMPLE_SEX_1979")
  return(data)
}


#********************************************************************************************************

# Remove the '#' before the following line to create a data file called "categories" with value labels. 
#categories <- vallabels(new_data)

# Remove the '#' before the following lines to rename variables using Qnames instead of Reference Numbers
#new_data <- qnames(new_data)
#categories <- qnames(categories)

# Produce summaries for the raw (uncategorized) data file
summary(new_data)

# Remove the '#' before the following lines to produce summaries for the "categories" data file.
#categories <- vallabels(new_data)
#summary(categories)

#************************************************************************************************************

