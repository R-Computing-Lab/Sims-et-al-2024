Master\_Analyses
================
Emma Sims, Jonathan Trattner, and S. Mason Garrison
2021-09-02

# Prep data

## Depression

``` r
new_data <- readr::read_csv('df_dep_gen1/df_dep_gen1.csv', 
                            col_types = cols())
names(new_data) <- c('H0000300',
  'H0000400',
  'H0000500',
  'H0000600',
  'H0000700',
  'H0000800',
  'H0000900',
  'H0001000',
  'H0001100',
  'H0001101',
  'H0003900',
  'H0004000',
  'H0004500',
  'H0006900',
  'H0007000',
  'H0007001',
  'H0007100',
  'H0008600',
  'H0013301',
  'H0013400',
  'H0013401',
  'H0013402',
  'H0013403',
  'H0013404',
  'H0013405',
  'H0013406',
  'H0013407',
  'H0013408',
  'H0016400',
  'H0016500',
  'H0016700',
  'H0016800',
  'H0016900',
  'H0017000',
  'H0020800',
  'H0020900',
  'H0020901',
  'H0021000',
  'H0021100',
  'H0021200',
  'H0021300',
  'H0021301',
  'H0021400',
  'R0000100',
  'R0144600',
  'R0173600',
  'R3894900',
  'R3895000',
  'R3895100',
  'R3895200',
  'R3895300',
  'R3895400',
  'R3895500',
  'R3895600',
  'R3895700',
  'R3895800',
  'R3895900',
  'R3896000',
  'R3896100',
  'R3896200',
  'R3896300',
  'R3896400',
  'R3896500',
  'R3896600',
  'R3896700',
  'R3896800',
  'R3896810',
  'R3896811',
  'R3896820',
  'R4978300',
  'R4978400',
  'R4978500',
  'R4978600',
  'R4978700',
  'R4978800',
  'R4978900',
  'R4978910',
  'T5006600',
  'T5740700')


# Handle missing values

  new_data[new_data == -1] = NA  # Refused 
  new_data[new_data == -2] = NA  # Dont know 
  new_data[new_data == -3] = NA  # Invalid missing 
  new_data[new_data == -4] = NA  # Valid missing 
  new_data[new_data == -5] = NA  # Non-interview 


# If there are values not categorized they will be represented as NA

vallabels = function(data) {
  data$H0000300 <- factor(data$H0000300, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("Rarely/None of the time/1 Day",
      "Some/A little of the time/1-2 Days",
      "Occasionally/Moderate amount of the time/3-4 Days",
      "Most/All of the time/5-7 Days"))
  data$H0000400 <- factor(data$H0000400, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("Rarely/None of the time/1 Day",
      "Some/A little of the time/1-2 Days",
      "Occasionally/Moderate amount of the time/3-4 Days",
      "Most/All of the time/5-7 Days"))
  data$H0000500 <- factor(data$H0000500, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("Rarely/None of the time/1 Day",
      "Some/A little of the time/1-2 Days",
      "Occasionally/Moderate amount of the time/3-4 Days",
      "Most/All of the time/5-7 Days"))
  data$H0000600 <- factor(data$H0000600, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("Rarely/None of the time/1 Day",
      "Some/A little of the time/1-2 Days",
      "Occasionally/Moderate amount of the time/3-4 Days",
      "Most/All of the time/5-7 Days"))
  data$H0000700 <- factor(data$H0000700, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("Rarely/None of the time/1 Day",
      "Some/A little of the time/1-2 Days",
      "Occasionally/Moderate amount of the time/3-4 Days",
      "Most/All of the time/5-7 Days"))
  data$H0000800 <- factor(data$H0000800, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("Rarely/None of the time/1 Day",
      "Some/A little of the time/1-2 Days",
      "Occasionally/Moderate amount of the time/3-4 Days",
      "Most/All of the time/5-7 Days"))
  data$H0000900 <- factor(data$H0000900, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("Rarely/None of the time/1 Day",
      "Some/A little of the time/1-2 Days",
      "Occasionally/Moderate amount of the time/3-4 Days",
      "Most/All of the time/5-7 Days"))
  data$H0001000 <- factor(data$H0001000, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("Rarely/None of the time/1 Day",
      "Some/A little of the time/1-2 Days",
      "Occasionally/Moderate amount of the time/3-4 Days",
      "Most/All of the time/5-7 Days"))
  data$H0001100 <- factor(data$H0001100, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("Rarely/None of the time/1 Day",
      "Some/A little of the time/1-2 Days",
      "Occasionally/Moderate amount of the time/3-4 Days",
      "Most/All of the time/5-7 Days"))
  data$H0003900 <- factor(data$H0003900, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$H0004000 <- factor(data$H0004000, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$H0004500 <- factor(data$H0004500, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0), 
    labels=c("All the time",
      "Most of the time",
      "A good bit of the time",
      "Some of the time",
      "A little of the time",
      "None of the time"))
  data$H0006900 <- factor(data$H0006900, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$H0007000 <- factor(data$H0007000, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0), 
    labels=c("1: January",
      "2: February",
      "3: March",
      "4: April",
      "5: May",
      "6: June",
      "7: July",
      "8: August",
      "9: September",
      "10: October",
      "11: November",
      "12: December"))

  data$H0007100 <- factor(data$H0007100, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$H0008600 <- factor(data$H0008600, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))

  data$H0013400 <- factor(data$H0013400, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("Rarely/None of the time/1 Day",
      "Some/A little of the time/1-2 Days",
      "Occasionally/Moderate amount of the time/3-4 Days",
      "Most/All of the time/5-7 Days"))
  data$H0013401 <- factor(data$H0013401, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("Rarely/None of the time/1 Day",
      "Some/A little of the time/1-2 Days",
      "Occasionally/Moderate amount of the time/3-4 Days",
      "Most/All of the time/5-7 Days"))
  data$H0013402 <- factor(data$H0013402, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("Rarely/None of the time/1 Day",
      "Some/A little of the time/1-2 Days",
      "Occasionally/Moderate amount of the time/3-4 Days",
      "Most/All of the time/5-7 Days"))
  data$H0013403 <- factor(data$H0013403, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("Rarely/None of the time/1 Day",
      "Some/A little of the time/1-2 Days",
      "Occasionally/Moderate amount of the time/3-4 Days",
      "Most/All of the time/5-7 Days"))
  data$H0013404 <- factor(data$H0013404, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("Rarely/None of the time/1 Day",
      "Some/A little of the time/1-2 Days",
      "Occasionally/Moderate amount of the time/3-4 Days",
      "Most/All of the time/5-7 Days"))
  data$H0013405 <- factor(data$H0013405, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("Rarely/None of the time/1 Day",
      "Some/A little of the time/1-2 Days",
      "Occasionally/Moderate amount of the time/3-4 Days",
      "Most/All of the time/5-7 Days"))
  data$H0013406 <- factor(data$H0013406, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("Rarely/None of the time/1 Day",
      "Some/A little of the time/1-2 Days",
      "Occasionally/Moderate amount of the time/3-4 Days",
      "Most/All of the time/5-7 Days"))
  data$H0013407 <- factor(data$H0013407, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("Rarely/None of the time/1 Day",
      "Some/A little of the time/1-2 Days",
      "Occasionally/Moderate amount of the time/3-4 Days",
      "Most/All of the time/5-7 Days"))
  data$H0013408 <- factor(data$H0013408, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("Rarely/None of the time/1 Day",
      "Some/A little of the time/1-2 Days",
      "Occasionally/Moderate amount of the time/3-4 Days",
      "Most/All of the time/5-7 Days"))
  data$H0016400 <- factor(data$H0016400, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$H0016500 <- factor(data$H0016500, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$H0016700 <- factor(data$H0016700, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0), 
    labels=c("All the time",
      "Most of the time",
      "A good bit of the time",
      "Some of the time",
      "A little of the time",
      "None of the time"))
  data$H0016800 <- factor(data$H0016800, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0), 
    labels=c("All the time",
      "Most of the time",
      "A good bit of the time",
      "Some of the time",
      "A little of the time",
      "None of the time"))
  data$H0016900 <- factor(data$H0016900, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0), 
    labels=c("All the time",
      "Most of the time",
      "A good bit of the time",
      "Some of the time",
      "A little of the time",
      "None of the time"))
  data$H0017000 <- factor(data$H0017000, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0), 
    labels=c("All the time",
      "Most of the time",
      "A good bit of the time",
      "Some of the time",
      "A little of the time",
      "None of the time"))
  data$H0020800 <- factor(data$H0020800, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$H0020900 <- factor(data$H0020900, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0), 
    labels=c("1: January",
      "2: February",
      "3: March",
      "4: April",
      "5: May",
      "6: June",
      "7: July",
      "8: August",
      "9: September",
      "10: October",
      "11: November",
      "12: December"))

  data$H0021000 <- factor(data$H0021000, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$H0021100 <- factor(data$H0021100, 
    levels=c(0.0,1.0), 
    labels=c("0: 0  CONDITION DOES NOT APPLY",
      "1: 1  CONDITION APPLIES"))
  data$H0021200 <- factor(data$H0021200, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$H0021300 <- factor(data$H0021300, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0), 
    labels=c("1: January",
      "2: February",
      "3: March",
      "4: April",
      "5: May",
      "6: June",
      "7: July",
      "8: August",
      "9: September",
      "10: October",
      "11: November",
      "12: December"))

  data$H0021400 <- factor(data$H0021400, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  ## maybe keep?
  data$R0144600[10.0 <= data$R0144600 & data$R0144600 <= 9999.0] <- 10.0
  data$R0144600[10010.0 <= data$R0144600 & data$R0144600 <= 10829.0] <- 10010.0
  data$R0144600[11800.0 <= data$R0144600 & data$R0144600 <= 11999.0] <- 11800.0
  data$R0144600[12800.0 <= data$R0144600 & data$R0144600 <= 12997.0] <- 12800.0
  data$R0144600 <- factor(data$R0144600, 
    levels=c(0.0,10.0,10010.0,11800.0,12800.0), 
    labels=c("0: 0 NO HEALTH LIMITATION",
      "10 TO 9999: 0010 THRU  9999 ICD-9 HEALTH CODE",
      "10010 TO 10829: 10010 THRU 10829 ICD-9 'V' CODE",
      "11800 TO 11999: 11800 THRU 11999 ICD-9 'E' CODE",
      "12800 TO 12997: 12800 THRU 12997 ICD-9 'M' CODE"))
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
  data$R3894900 <- factor(data$R3894900, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("RARELY/NONE OF THE TIME/1 DAY",
      "SOME/A LITTLE OF THE TIME/1-2 DAYS",
      "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS",
      "MOST/ALL OF THE TIME/5-7 DAYS"))
  data$R3895000 <- factor(data$R3895000, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("RARELY/NONE OF THE TIME/1 DAY",
      "SOME/A LITTLE OF THE TIME/1-2 DAYS",
      "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS",
      "MOST/ALL OF THE TIME/5-7 DAYS"))
  data$R3895100 <- factor(data$R3895100, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("RARELY/NONE OF THE TIME/1 DAY",
      "SOME/A LITTLE OF THE TIME/1-2 DAYS",
      "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS",
      "MOST/ALL OF THE TIME/5-7 DAYS"))
  data$R3895200 <- factor(data$R3895200, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("RARELY/NONE OF THE TIME/1 DAY",
      "SOME/A LITTLE OF THE TIME/1-2 DAYS",
      "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS",
      "MOST/ALL OF THE TIME/5-7 DAYS"))
  data$R3895300 <- factor(data$R3895300, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("RARELY/NONE OF THE TIME/1 DAY",
      "SOME/A LITTLE OF THE TIME/1-2 DAYS",
      "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS",
      "MOST/ALL OF THE TIME/5-7 DAYS"))
  data$R3895400 <- factor(data$R3895400, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("RARELY/NONE OF THE TIME/1 DAY",
      "SOME/A LITTLE OF THE TIME/1-2 DAYS",
      "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS",
      "MOST/ALL OF THE TIME/5-7 DAYS"))
  data$R3895500 <- factor(data$R3895500, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("RARELY/NONE OF THE TIME/1 DAY",
      "SOME/A LITTLE OF THE TIME/1-2 DAYS",
      "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS",
      "MOST/ALL OF THE TIME/5-7 DAYS"))
  data$R3895600 <- factor(data$R3895600, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("RARELY/NONE OF THE TIME/1 DAY",
      "SOME/A LITTLE OF THE TIME/1-2 DAYS",
      "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS",
      "MOST/ALL OF THE TIME/5-7 DAYS"))
  data$R3895700 <- factor(data$R3895700, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("RARELY/NONE OF THE TIME/1 DAY",
      "SOME/A LITTLE OF THE TIME/1-2 DAYS",
      "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS",
      "MOST/ALL OF THE TIME/5-7 DAYS"))
  data$R3895800 <- factor(data$R3895800, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("RARELY/NONE OF THE TIME/1 DAY",
      "SOME/A LITTLE OF THE TIME/1-2 DAYS",
      "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS",
      "MOST/ALL OF THE TIME/5-7 DAYS"))
  data$R3895900 <- factor(data$R3895900, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("RARELY/NONE OF THE TIME/1 DAY",
      "SOME/A LITTLE OF THE TIME/1-2 DAYS",
      "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS",
      "MOST/ALL OF THE TIME/5-7 DAYS"))
  data$R3896000 <- factor(data$R3896000, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("RARELY/NONE OF THE TIME/1 DAY",
      "SOME/A LITTLE OF THE TIME/1-2 DAYS",
      "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS",
      "MOST/ALL OF THE TIME/5-7 DAYS"))
  data$R3896100 <- factor(data$R3896100, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("RARELY/NONE OF THE TIME/1 DAY",
      "SOME/A LITTLE OF THE TIME/1-2 DAYS",
      "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS",
      "MOST/ALL OF THE TIME/5-7 DAYS"))
  data$R3896200 <- factor(data$R3896200, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("RARELY/NONE OF THE TIME/1 DAY",
      "SOME/A LITTLE OF THE TIME/1-2 DAYS",
      "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS",
      "MOST/ALL OF THE TIME/5-7 DAYS"))
  data$R3896300 <- factor(data$R3896300, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("RARELY/NONE OF THE TIME/1 DAY",
      "SOME/A LITTLE OF THE TIME/1-2 DAYS",
      "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS",
      "MOST/ALL OF THE TIME/5-7 DAYS"))
  data$R3896400 <- factor(data$R3896400, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("RARELY/NONE OF THE TIME/1 DAY",
      "SOME/A LITTLE OF THE TIME/1-2 DAYS",
      "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS",
      "MOST/ALL OF THE TIME/5-7 DAYS"))
  data$R3896500 <- factor(data$R3896500, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("RARELY/NONE OF THE TIME/1 DAY",
      "SOME/A LITTLE OF THE TIME/1-2 DAYS",
      "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS",
      "MOST/ALL OF THE TIME/5-7 DAYS"))
  data$R3896600 <- factor(data$R3896600, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("RARELY/NONE OF THE TIME/1 DAY",
      "SOME/A LITTLE OF THE TIME/1-2 DAYS",
      "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS",
      "MOST/ALL OF THE TIME/5-7 DAYS"))
  data$R3896700 <- factor(data$R3896700, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("RARELY/NONE OF THE TIME/1 DAY",
      "SOME/A LITTLE OF THE TIME/1-2 DAYS",
      "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS",
      "MOST/ALL OF THE TIME/5-7 DAYS"))
  data$R3896800 <- factor(data$R3896800, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("RARELY/NONE OF THE TIME/1 DAY",
      "SOME/A LITTLE OF THE TIME/1-2 DAYS",
      "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS",
      "MOST/ALL OF THE TIME/5-7 DAYS"))

  data$R4978300 <- factor(data$R4978300, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("Rarely/None of the Time/1 Day",
      "Some/A Little of the Time/1-2 Days",
      "Occasionally/Moderate Amount of the Time/3-4 Days",
      "Most/All of the Time/5-7 Days"))
  data$R4978400 <- factor(data$R4978400, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("Rarely/None of the Time/1 Day",
      "Some/A Little of the Time/1-2 Days",
      "Occasionally/Moderate Amount of the Time/3-4 Days",
      "Most/All of the Time/5-7 Days"))
  data$R4978500 <- factor(data$R4978500, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("Rarely/None of the Time/1 Day",
      "Some/A Little of the Time/1-2 Days",
      "Occasionally/Moderate Amount of the Time/3-4 Days",
      "Most/All of the Time/5-7 Days"))
  data$R4978600 <- factor(data$R4978600, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("Rarely/None of the Time/1 Day",
      "Some/A Little of the Time/1-2 Days",
      "Occasionally/Moderate Amount of the Time/3-4 Days",
      "Most/All of the Time/5-7 Days"))
  data$R4978700 <- factor(data$R4978700, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("Rarely/None of the Time/1 Day",
      "Some/A Little of the Time/1-2 Days",
      "Occasionally/Moderate Amount of the Time/3-4 Days",
      "Most/All of the Time/5-7 Days"))
  data$R4978800 <- factor(data$R4978800, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("Rarely/None of the Time/1 Day",
      "Some/A Little of the Time/1-2 Days",
      "Occasionally/Moderate Amount of the Time/3-4 Days",
      "Most/All of the Time/5-7 Days"))
  data$R4978900 <- factor(data$R4978900, 
    levels=c(0.0,1.0,2.0,3.0), 
    labels=c("Rarely/None of the Time/1 Day",
      "Some/A Little of the Time/1-2 Days",
      "Occasionally/Moderate Amount of the Time/3-4 Days",
      "Most/All of the Time/5-7 Days"))

  data$T5006600 <- factor(data$T5006600, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0), 
    labels=c("1 (not at all satisfied)",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7 (completely satisfied)"))
  data$T5740700 <- factor(data$T5740700, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0), 
    labels=c("1 (not at all satisfied)",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7 (completely satisfied)"))
  return(data)
}

varlabels <- c("CES-D - POOR APPETITE XRND",
  "CES-D - COULD NOT SHAKE BLUES XRND",
  "CES-D - TROUBL KEEPING MIND ON TASKS XRND",
  "CES-D - DEPRESSED XRND",
  "CES-D - EVERYTHING TOOK EXTRA EFFORT XRND",
  "CES-D - RESTLESS SLEEP XRND",
  "CES-D - FELT LONELY XRND",
  "CES-D - SAD XRND",
  "CES-D - COULD NOT GET GOING XRND",
  "H40 7-ITEM CES-D SCORE XRND",
  "SF-12 - EMOTIONAL PRBS LIMIT ACCMPLSHMT? XRND",
  "SF-12 - EMOTIONAL PRBS MADE LESS CARFUL? XRND",
  "SF-12 - HLTH PRBS HINDER SOC ACTIV? XRND",
  "CCR-DR DIAGNS EMTNL,NRVS,PSYC PRBS? XRND",
  "CCR-DATE DR DIAG EMTN,NRVS,PSYC PRB XRND",
  "CCR-DATE DR DIAG EMTN,NRVS,PSYC PRB XRND",
  "CCR-EMTN,NRVS,PSYC PROBS LST 12 MO? XRND",
  "CCR-DEPRESN,EXCESS WORRY,NERVS PRB XRND",
  "H50 7-ITEM CES-D SCORE XRND",
  "CESD -  POOR APPETITE XRND",
  "CESD - COULD NOT SHAKE BLUES XRND",
  "CESD - TROUBLE KEEPING MIND ON TASK XRND",
  "CESD - DEPRESSION XRND",
  "CESD - EVERYTHING TAKING EXTRA EFFORT XRND",
  "CESD - RESTLESS SLEEP XRND",
  "CESD - FEELING LONELY XRND",
  "CESD -  FEELING SAD XRND",
  "CESD - COULD NOT GET GOING XRND",
  "SF12 - EMOTIONAL PRBS LIMIT ACCMPLSHMT? XRND",
  "SF12 - EMOTIONAL PRBS MADE LESS CARFUL? XRND",
  "SF12 - CALM/PEACEFUL PAST 4 WKS? XRND",
  "SF12 - HAVE ENERGY PAST 4 WKS? XRND",
  "SF12 - DOWNHRTD OR BLUE PAST 4 WKS? XRND",
  "SF12 - HLTH PRBS HINDER SOC ACTIV? XRND",
  "DOCTOR EVER DIAGNOSED R SUFFERING FROM DEPRESSION XRND",
  "DATE RS DEPRESSION DIAGNOSED XRND",
  "DATE RS DEPRESSION DIAGNOSED XRND",
  "R SUFFERED FROM DEPRESSION IN LAST 12 MOS XRND",
  "PSYCHIATRIC DIAGNOSIS IN 40+ HEALTH MOD XRND",
  "DR EVER SAID R HAD EMO/NERV/PSYC PBLS OT THAN DEP XRND",
  "DATE R EMO/NERV/PSYC PBLS DIAGNOSED XRND",
  "DATE R EMO/NERV/PSYC PBLS DIAGNOSED XRND",
  "R HAD ANY EMO/NERV/PSYC PROBLEMS IN LAST 12 MOS XRND",
  "ID# (1-12686) 79",
  "HLTH CONSOLIDATION CODE 5-D 79",
  "SAMPLE ID  79 INT",
  "CES-D-BOTHERED BY THINGS 92",
  "CES-D-POOR APPETITE 92",
  "CES-D-UNABLE TO SHAKE BLUES 92",
  "CES-D-FELT GOOD AS OTHR PEOPLE 92",
  "CES-D-TRBLE KEEPING MIND ON TASKS 92",
  "CES-D-DEPRESSED 92",
  "CES-D-THINGS TOOK EXTRA EFFORT 92",
  "CES-D-HOPEFUL 92",
  "CES-D-A FAILURE 92",
  "CES-D-FEARFUL 92",
  "CES-D-RESTLESS SLEEP 92",
  "CES-D-HAPPY 92",
  "CES-D-LESS TALKATIVE THAN USUAL 92",
  "CES-D-LONELY 92",
  "CES-D-OTHERS WERE UNFRIENDLY 92",
  "CES-D-ENJOYED LIFE 92",
  "CES-D-CRYING SPELLS 92",
  "CES-D-SAD 92",
  "CES-D-DISLIKED BY OTHERS 92",
  "CES-D-COULD NOT GET GOING 92",
  "20-ITEM CES-D SCORE 92",
  "FLAG FOR 20-ITEM CES-D SCORE 92",
  "7-ITEM CES-D SCORE 92",
  "CES-D - POOR APPETITE 94",
  "CES-D-TRBLE KPNG MIND ON TASKS 94",
  "CES-D - DEPRESSED 94",
  "CES-D - TOOK EXTRA EFFORT 94",
  "CES-D - RESTLESS SLEEP 94",
  "CES-D - SAD 94",
  "CES-D - COULD NOT GET GOING 94",
  "7-ITEM CES-D SCORE 94",
  "R SATISFACTION WITH LIFE 2014",
  "R SATISFACTION WITH LIFE 2016"
)


# Use qnames rather than rnums

qnames = function(data) {
  names(data) <- c("H40_CESD_01",
    "H40_CESD_02",
    "H40_CESD_03",
    "H40_CESD_04",
    "H40_CESD_05",
    "H40_CESD_06",
    "H40_CESD_07",
    "H40_CESD_08",
    "H40_CESD_09",
    "H40_CESD_SCORE_7_ITEM",
    "H40_SF12_5",
    "H40_SF12_5B",
    "H40_SF12_8",
    "H40_CHRC_8",
    "H40_CHRC_8A_M",
    "H40_CHRC_8A_Y",
    "H40_CHRC_8B",
    "H40_CHRC_10K",
    "H50_CESD_SCORE_7_ITEM",
    "H50_CESD_01",
    "H50_CESD_02",
    "H50_CESD_03",
    "H50_CESD_04",
    "H50_CESD_05",
    "H50_CESD_06",
    "H50_CESD_07",
    "H50_CESD_08",
    "H50_CESD_09",
    "H50_SF12_5",
    "H50_SF12_5B",
    "H50_SF12_7",
    "H50_SF12_7B",
    "H50_SF12_7C",
    "H50_SF12_8",
    "H50_CHRC_7B",
    "H50_CHRC_7C_M",
    "H50_CHRC_7C_Y",
    "H50_CHRC_7D",
    "H50_CHRC_CHK6",
    "H50_CHRC_8",
    "H50_CHRC_8A_M",
    "H50_CHRC_8A_Y",
    "H50_CHRC_8B",
    "CASEID",
    "HEALTH_CODE_1979",
    "SAMPLE_ID",
    "CESD_00_1992",
    "CESD_01_1992",
    "CESD_02_1992",
    "CESD_02A_1992",
    "CESD_03_1992",
    "CESD_04_1992",
    "CESD_05_1992",
    "CESD_05A_1992",
    "CESD_05B_1992",
    "CESD_05C_1992",
    "CESD_06_1992",
    "CESD_06A_1992",
    "CESD_06B_1992",
    "CESD_07_1992",
    "CESD_07A_1992",
    "CESD_07B_1992",
    "CESD_07C_1992",
    "CESD_08_1992",
    "CESD_08A_1992",
    "CESD_09_1992",
    "CESD_SCORE_20_ITEM_1992",
    "CESD_FLAG_1992",
    "CESD_SCORE_7_ITEM_1992",
    "CESD_01_1994",
    "CESD_03_1994",
    "CESD_04_1994",
    "CESD_05_1994",
    "CESD_06_1994",
    "CESD_08_1994",
    "CESD_09_1994",
    "CESD_SCORE_7_ITEM_1994",
    "LIFE-SATISFACTION_2014",
    "LIFE-SATISFACTION_2016")
  return(data)
}


#********************************************************************************************************

df_dep_gen1 <- qnames(vallabels(new_data))

remove(new_data)

#************************************************************************************************************
```

### Crime

``` r
new_data <- readr::read_csv('df_crime_gen1/df_crime_gen1.csv', col_types = cols())
names(new_data) <- c('R0000100',
  'R0173600',
  'R0214700',
  'R0214800',
  'R0304600',
  'R0304900',
  'R0305000',
  'R0305100',
  'R0305200',
  'R0305300',
  'R0305400',
  'R0305500',
  'R0305600',
  'R0305900',
  'R0306000',
  'R0306100',
  'R0306200',
  'R0306300',
  'R0306400',
  'R0306500',
  'R0306700',
  'R0306800',
  'R0306900',
  'R0307000',
  'R0307100',
  'R0307200',
  'R0307300',
  'R0307400',
  'R0307500',
  'R0307600',
  'R0307700',
  'R0307800',
  'R0307900',
  'R0308000',
  'R0308100',
  'R0308200',
  'R0308300',
  'R0308400',
  'R0308500',
  'R0308600',
  'R0308700',
  'R0308800',
  'R0308900',
  'R0309000',
  'R0309100',
  'R0309200',
  'R0309300',
  'R0309400',
  'R0309500',
  'R0309600',
  'R0309800',
  'R0309900',
  'R0310000',
  'R0310100',
  'R0310200',
  'R0310300',
  'R0310400',
  'R0310410',
  'R0310600',
  'R0310700',
  'R0310800',
  'R0310810',
  'R0310900',
  'R0311000',
  'R0311100',
  'R0311200',
  'R0311210',
  'R0406310',
  'R0618810',
  'R0898510',
  'R1144710',
  'R1519910',
  'R1890300',
  'R2257400',
  'R2444600',
  'R2870100',
  'R3073900',
  'R3400500',
  'R3655900',
  'R4006400',
  'R4417500',
  'R4980800',
  'R5080500',
  'R5165800',
  'R6478500',
  'R7006300',
  'R7703500',
  'R8495900',
  'T0987500',
  'T2209800',
  'T3107600',
  'T4112100',
  'T5022300',
  'T5770600')


# Handle missing values

  new_data[new_data == -1] = NA  # Refused
  new_data[new_data == -2] = NA  # Dont know
  new_data[new_data == -3] = NA  # Invalid missing
  new_data[new_data == -4] = NA  # Valid missing
  new_data[new_data == -5] = NA  # Non-interview


# If there are values not categorized they will be represented as NA

vallabels = function(data) {
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
#  data$R0214700 <- factor(data$R0214700,
#    levels=c(1.0,2.0,3.0),
#    labels=c("HISPANIC",
#      "BLACK",
#      "NON-BLACK, NON-HISPANIC"))
#  data$R0214800 <- factor(data$R0214800,
#    levels=c(1.0,2.0),
#    labels=c("MALE",
#      "FEMALE"))
# data$R0304600 <- factor(data$R0304600,
#   levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
#   labels=c("NEVER",
#     "ONCE",
#     "TWICE",
#     "3-5 TIMES",
#     "6-10 TIMES",
#     "11-50 TIMES",
#     "MORE THAN 50 TIMES"))
# data$R0304900 <- factor(data$R0304900,
  #   levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
  #   labels=c("NEVER",
  #     "ONCE",
  #     "TWICE",
  #     "3-5 TIMES",
  #     "6-10 TIMES",
  #     "11-50 TIMES",
  #     "MORE THAN 50 TIMES"))
  # data$R0305000 <- factor(data$R0305000,
  #   levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
  #   labels=c("NEVER",
  #     "ONCE",
  #     "TWICE",
  #     "3-5 TIMES",
  #     "6-10 TIMES",
  #     "11-50 TIMES",
  #     "MORE THAN 50 TIMES"))
  # data$R0305100 <- factor(data$R0305100,
  #   levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
  #   labels=c("NEVER",
  #     "ONCE",
  #     "TWICE",
  #     "3-5 TIMES",
  #     "6-10 TIMES",
  #     "11-50 TIMES",
  #     "MORE THAN 50 TIMES"))
  # data$R0305200 <- factor(data$R0305200,
  #   levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
  #   labels=c("NEVER",
  #     "ONCE",
  #     "TWICE",
  #     "3-5 TIMES",
  #     "6-10 TIMES",
  #     "11-50 TIMES",
  #     "MORE THAN 50 TIMES"))
  # data$R0305300 <- factor(data$R0305300,
  #   levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
  #   labels=c("NEVER",
  #     "ONCE",
  #     "TWICE",
  #     "3-5 TIMES",
  #     "6-10 TIMES",
  #     "11-50 TIMES",
  #     "MORE THAN 50 TIMES"))
  # data$R0305400 <- factor(data$R0305400,
  #   levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
  #   labels=c("NEVER",
  #     "ONCE",
  #     "TWICE",
  #     "3-5 TIMES",
  #     "6-10 TIMES",
  #     "11-50 TIMES",
  #     "MORE THAN 50 TIMES"))
  # data$R0305500 <- factor(data$R0305500,
  #   levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
  #   labels=c("NEVER",
  #     "ONCE",
  #     "TWICE",
  #     "3-5 TIMES",
  #     "6-10 TIMES",
  #     "11-50 TIMES",
  #     "MORE THAN 50 TIMES"))
  # data$R0305600 <- factor(data$R0305600,
  #   levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
  #   labels=c("NEVER",
  #     "ONCE",
  #     "TWICE",
  #     "3-5 TIMES",
  #     "6-10 TIMES",
  #     "11-50 TIMES",
  #     "MORE THAN 50 TIMES"))
  # data$R0305900 <- factor(data$R0305900,
  #   levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
  #   labels=c("NEVER",
  #     "ONCE",
  #     "TWICE",
  #     "3-5 TIMES",
  #     "6-10 TIMES",
  #     "11-50 TIMES",
  #     "MORE THAN 50 TIMES"))
  # data$R0306000 <- factor(data$R0306000,
  #   levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
  #   labels=c("NEVER",
  #     "ONCE",
  #     "TWICE",
  #     "3-5 TIMES",
  #     "6-10 TIMES",
  #     "11-50 TIMES",
  #     "MORE THAN 50 TIMES"))
  # data$R0306100 <- factor(data$R0306100,
  #   levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
  #   labels=c("NEVER",
  #     "ONCE",
  #     "TWICE",
  #     "3-5 TIMES",
  #     "6-10 TIMES",
  #     "11-50 TIMES",
  #     "MORE THAN 50 TIMES"))
  # data$R0306200 <- factor(data$R0306200,
  #   levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
  #   labels=c("NEVER",
  #     "ONCE",
  #     "TWICE",
  #     "3-5 TIMES",
  #     "6-10 TIMES",
  #     "11-50 TIMES",
  #     "MORE THAN 50 TIMES"))
  # data$R0306300 <- factor(data$R0306300,
  #   levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
  #   labels=c("NEVER",
  #     "ONCE",
  #     "TWICE",
  #     "3-5 TIMES",
  #     "6-10 TIMES",
  #     "11-50 TIMES",
  #     "MORE THAN 50 TIMES"))
  # data$R0306400 <- factor(data$R0306400,
  #   levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
  #   labels=c("NEVER",
  #     "ONCE",
  #     "TWICE",
  #     "3-5 TIMES",
  #     "6-10 TIMES",
  #     "11-50 TIMES",
  #     "MORE THAN 50 TIMES"))
  # data$R0306500 <- factor(data$R0306500,
  #   levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
  #   labels=c("NEVER",
  #     "ONCE",
  #     "TWICE",
  #     "3-5 TIMES",
  #     "6-10 TIMES",
  #     "11-50 TIMES",
  #     "MORE THAN 50 TIMES"))
  data$R0306700 <- factor(data$R0306700,
    levels=c(0.0,1.0),
    labels=c("NO",
      "YES"))

  data$R0307100 <- factor(data$R0307100,
    levels=c(0.0,1.0),
    labels=c("NO",
      "YES"))

  data$R0307700 <- factor(data$R0307700,
    levels=c(0.0,1.0),
    labels=c("NO",
      "YES"))
  data$R0307800 <- factor(data$R0307800,
    levels=c(0.0,1.0),
    labels=c("NO",
      "YES"))

  data$R0308300 <- factor(data$R0308300,
    levels=c(1.0),
    labels=c("ASSAULT"))
  data$R0308400 <- factor(data$R0308400,
    levels=c(2.0),
    labels=c("ROBBERY"))
  data$R0308500 <- factor(data$R0308500,
    levels=c(3.0),
    labels=c("THEFT"))
  data$R0308600 <- factor(data$R0308600,
    levels=c(4.0),
    labels=c("THEFT BY DECEPTION"))
  data$R0308700 <- factor(data$R0308700,
    levels=c(5.0),
    labels=c("CONVICTED REGARDING STOLEN PROPERTY"))
  data$R0308800 <- factor(data$R0308800,
    levels=c(6.0),
    labels=c("DESTRUCTION OF PROPERTY"))
  data$R0308900 <- factor(data$R0308900,
    levels=c(7.0),
    labels=c("OTHER PROPERTY OFFENSE"))
  data$R0309000 <- factor(data$R0309000,
    levels=c(8.0),
    labels=c("GAMBLING OFFENSE"))
  data$R0309100 <- factor(data$R0309100,
    levels=c(9.0),
    labels=c("COMMERCIAL VICE"))
  data$R0309200 <- factor(data$R0309200,
    levels=c(10.0),
    labels=c("POSSESSION OF MARIJUANA/HASHISH"))
  data$R0309300 <- factor(data$R0309300,
    levels=c(11.0),
    labels=c("SELLING MARIJUANA/HASHISH"))
  data$R0309400 <- factor(data$R0309400,
    levels=c(12.0),
    labels=c("POSSESSION OF OTHER ILLICIT DRUGS"))
  data$R0309500 <- factor(data$R0309500,
    levels=c(13.0),
    labels=c("SALE/MANUFACTURE OF OTHER ILLICIT DRUGS"))
  data$R0309600 <- factor(data$R0309600,
    levels=c(14.0),
    labels=c("MAJOR TRAFFIC OFFENSE"))
  data$R0309800 <- factor(data$R0309800,
    levels=c(16.0),
    labels=c("STATUS OFFENSE"))
  data$R0309900 <- factor(data$R0309900,
    levels=c(17.0),
    labels=c("OTHER OFFENSE"))
  data$R0310000 <- factor(data$R0310000,
    levels=c(0.0,1.0),
    labels=c("NO",
      "YES"))
  data$R0310100 <- factor(data$R0310100,
    levels=c(0.0,1.0),
    labels=c("NO",
      "YES"))

  data$R0310600 <- factor(data$R0310600,
    levels=c(0.0,1.0),
    labels=c("NO",
      "YES"))

  data$R0310900 <- factor(data$R0310900,
    levels=c(0.0,1.0),
    labels=c("NO",
      "YES"))

  data$R0406310 <- factor(data$R0406310,
    levels=c(60.0,61.0,62.0,63.0,64.0,65.0,66.0),
    labels=c("PARENT REFUSAL/BREAKOFF",
      "YOUTH REFUSAL/BREAKOFF",
      "PARENT AND YOUTH REFUSAL/BREAKOFF",
      "UNABLE TO LOCATE FAMILY UNIT AND YOUTH",
      "UNABLE TO LOCATE YOUTH",
      "DECEASED",
      "OTHER"))
  data$R0618810 <- factor(data$R0618810,
    levels=c(60.0,61.0,62.0,63.0,64.0,65.0,66.0),
    labels=c("PARENT REFUSAL/BREAKOFF",
      "YOUTH REFUSAL/BREAKOFF",
      "PARENT AND YOUTH REFUSAL/BREAKOFF",
      "UNABLE TO LOCATE FAMILY UNIT AND YOUTH",
      "UNABLE TO LOCATE YOUTH",
      "DECEASED",
      "OTHER"))
  data$R0898510 <- factor(data$R0898510,
    levels=c(60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0),
    labels=c("PARENT REFUSAL/BREAKOFF",
      "YOUTH REFUSAL/BREAKOFF",
      "PARENT & YOUTH REFUSAL/BREAKOFF",
      "UNABLE TO LOCATE FAMILY UNIT & YOUTH",
      "UNABLE TO LOCATE YOUTH",
      "DECEASED",
      "OTHER",
      "DO NOT REFIELD (VERY DIFFICULT CASES)"))
  data$R1144710 <- factor(data$R1144710,
    levels=c(60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0),
    labels=c("PARENT REFUSAL/BREAKOFF",
      "YOUTH REFUSAL/BREAKOFF",
      "PARENT & YOUTH REFUSAL/BREAKOFF",
      "UNABLE TO LOCATE FAMILY UNIT & YOUTH",
      "UNABLE TO LOCATE YOUTH",
      "DECEASED",
      "OTHER",
      "DO NOT REFIELD (VERY DIFFICULT CASES)"))
  data$R1519910 <- factor(data$R1519910,
    levels=c(60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0),
    labels=c("PARENT REFUSAL/BREAKOFF",
      "YOUTH REFUSAL/BREAKOFF",
      "PARENT & YOUTH REFUSAL/BREAKOFF",
      "UNABLE TO LOCATE FAMILY UNIT & YOUTH",
      "UNABLE TO LOCATE YOUTH",
      "DECEASED",
      "OTHER",
      "DO NOT REFIELD (VERY DIFFICULT CASES)"))
  data$R1890300 <- factor(data$R1890300,
    levels=c(60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0),
    labels=c("PARENT REFUSAL/BREAKOFF",
      "YOUTH REFUSAL/BREAKOFF",
      "PARENT & YOUTH REFUSAL/BREAKOFF",
      "UNABLE TO LOCATE FAMILY UNIT & YOUTH",
      "UNABLE TO LOCATE YOUTH",
      "DECEASED",
      "OTHER",
      "DO NOT REFIELD (VERY DIFFICULT CASES)",
      "MILITARY SAMPLE DROPPED"))
  data$R2257400 <- factor(data$R2257400,
    levels=c(60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0),
    labels=c("PARENT REFUSAL/BREAKOFF",
      "YOUTH REFUSAL/BREAKOFF",
      "PARENT & YOUTH REFUSAL/BREAKOFF",
      "UNABLE TO LOCATE FAMILY UNIT & YOUTH",
      "UNABLE TO LOCATE YOUTH",
      "DECEASED",
      "OTHER",
      "DO NOT REFIELD (VERY DIFFICULT CASES)",
      "MILITARY SAMPLE DROPPED"))
  data$R2444600 <- factor(data$R2444600,
    levels=c(60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0),
    labels=c("PARENT REFUSAL/BREAKOFF",
      "YOUTH REFUSAL/BREAKOFF",
      "PARENT & YOUTH REFUSAL/BREAKOFF",
      "UNABLE TO LOCATE FAMILY UNIT & YOUTH",
      "UNABLE TO LOCATE YOUTH",
      "DECEASED",
      "OTHER",
      "DO NOT REFIELD (VERY DIFFICULT CASES)",
      "MILITARY SAMPLE DROPPED"))
  data$R2870100 <- factor(data$R2870100,
    levels=c(60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0),
    labels=c("PARENT REFUSAL/BREAKOFF",
      "YOUTH REFUSAL/BREAKOFF",
      "PARENT & YOUTH REFUSAL/BREAKOFF",
      "UNABLE TO LOCATE FAMILY UNIT & YOUTH",
      "UNABLE TO LOCATE YOUTH",
      "DECEASED",
      "OTHER",
      "DO NOT REFIELD (VERY DIFFICULT CASES)",
      "MILITARY SAMPLE DROPPED"))
  data$R3073900 <- factor(data$R3073900,
    levels=c(60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0),
    labels=c("PARENT REFUSAL/BREAKOFF",
      "YOUTH REFUSAL/BREAKOFF",
      "PARENT & YOUTH REFUSAL/BREAKOFF",
      "UNABLE TO LOCATE FAMILY UNIT & YOUTH",
      "UNABLE TO LOCATE YOUTH",
      "DECEASED",
      "OTHER",
      "DO NOT REFIELD (VERY DIFFICULT CASES)",
      "MILITARY SAMPLE DROPPED"))
  data$R3400500 <- factor(data$R3400500,
    levels=c(60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0),
    labels=c("PARENT REFUSAL/BREAKOFF",
      "YOUTH REFUSAL/BREAKOFF",
      "PARENT & YOUTH REFUSAL/BREAKOFF",
      "UNABLE TO LOCATE FAMILY UNIT & YOUTH",
      "UNABLE TO LOCATE YOUTH",
      "DECEASED",
      "OTHER",
      "DO NOT REFIELD (VERY DIFFICULT CASES)",
      "MILITARY SAMPLE DROPPED"))
  data$R3655900 <- factor(data$R3655900,
    levels=c(60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0),
    labels=c("PARENT REFUSAL/BREAKOFF",
      "YOUTH REFUSAL/BREAKOFF",
      "PARENT & YOUTH REFUSAL/BREAKOFF",
      "UNABLE TO LOCATE FAMILY UNIT & YOUTH",
      "UNABLE TO LOCATE YOUTH",
      "DECEASED",
      "OTHER",
      "DO NOT REFIELD (VERY DIFFICULT CASES)",
      "MILITARY SAMPLE DROPPED",
      "SUPPLEMENTAL MALE POOR WHITE SAMPLE DROPPED",
      "SUPPLEMENTAL FEMALE POOR WHITE SAMPLE DROPPED"))
  data$R4006400 <- factor(data$R4006400,
    levels=c(60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0),
    labels=c("PARENT REFUSAL/BREAKOFF",
      "YOUTH REFUSAL/BREAKOFF",
      "PARENT & YOUTH REFUSAL/BREAKOFF",
      "UNABLE TO LOCATE FAMILY UNIT & YOUTH",
      "UNABLE TO LOCATE YOUTH",
      "DECEASED",
      "OTHER",
      "DO NOT REFIELD (VERY DIFFICULT CASES)",
      "MILITARY SAMPLE DROPPED",
      "SUPPLEMENTAL MALE POOR WHITE SAMPLE DROPPED",
      "SUPPLEMENTAL FEMALE POOR WHITE SAMPLE DROPPED"))
  data$R4417500 <- factor(data$R4417500,
    levels=c(60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0),
    labels=c("PARENT REFUSAL/BREAKOFF",
      "YOUTH REFUSAL/BREAKOFF",
      "PARENT & YOUTH REFUSAL/BREAKOFF",
      "UNABLE TO LOCATE FAMILY UNIT & YOUTH",
      "UNABLE TO LOCATE YOUTH",
      "DECEASED",
      "OTHER",
      "DO NOT REFIELD (VERY DIFFICULT CASES)",
      "MILITARY SAMPLE DROPPED",
      "SUPPLEMENTAL MALE POOR WHITE SAMPLE DROPPED",
      "SUPPLEMENTAL FEMALE POOR WHITE SAMPLE DROPPED"))
  data$R4980800 <- factor(data$R4980800,
    levels=c(1.0,2.0,3.0,4.0,5.0),
    labels=c("Happened 3 or more times in the past year",
      "Happened 2 times in the past year",
      "Happened 1 time in the past year",
      "Happened in lifetime other than in past year",
      "Never happened"))
  data$R5080500 <- factor(data$R5080500,
    levels=c(60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0),
    labels=c("60: 60  PARENT REFUSAL/BREAKOFF",
      "61: 61  YOUTH REFUSAL/BREAKOFF",
      "62: 62  PARENT & YOUTH REFUSAL/BREAKOFF",
      "63: 63  UNABLE TO LOCATE FAMILY UNIT & YOUTH",
      "64: 64  UNABLE TO LOCATE YOUTH",
      "65: 65  DECEASED",
      "66: 66  OTHER",
      "67: 67  DO NOT REFIELD (VERY DIFFICULT CASE)",
      "68: 68  MILITARY SAMPLE DROPPED",
      "69: 69  SUPPLEMENTAL MALE POOR WHITE SAMPLE DROPPED",
      "70: 70  SUPPLEMENTAL FEMALE POOR WHITE SAMPLE DROPPED"))
  data$R5165800 <- factor(data$R5165800,
    levels=c(60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0),
    labels=c("60: PARENT REFUSAL/BREAKOFF",
      "61: YOUTH REFUSAL/BREAKOFF",
      "62: PARENT & YOUTH REFUSAL/BREAKOFF",
      "63: UNABLE TO LOCATE FAMILY UNIT & YOUTH",
      "64: UNABLE TO LOCATE YOUTH",
      "65: DECEASED",
      "66: OTHER",
      "67: DO NOT REFIELD (VERY DIFFICULT CASE)",
      "68: MILITARY SAMPLE DROPPED",
      "69: SUPPLEMENTAL MALE POOR WHITE SAMPLE DROPPED",
      "70: SUPPLEMENTAL FEMALE POOR WHITE SAMPLE DROPPED"))
  data$R6478500 <- factor(data$R6478500,
    levels=c(60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0),
    labels=c("60: 60  PARENT REFUSAL/BREAKOFF",
      "61: 61  YOUTH REFUSAL/BREAKOFF",
      "62: 62  PARENT & YOUTH REFUSAL/BREAKOFF",
      "63: 63  UNABLE TO LOCATE FAMILY UNIT & YOUTH",
      "64: 64  UNABLE TO LOCATE YOUTH",
      "65: 65  DECEASED",
      "66: 66  OTHER",
      "67: 67  DO NOT REFIELD (VERY DIFFICULT CASE)",
      "68: 68  MILITARY SAMPLE DROPPED",
      "69: 69  SUPPLEMENTAL MALE POOR WHITE SAMPLE DROPPED",
      "70: 70  SUPPLEMENTAL FEMALE POOR WHITE SAMPLE DROPPED"))
  data$R7006300 <- factor(data$R7006300,
    levels=c(60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0),
    labels=c("60: PARENT REFUSAL/BREAKOFF",
      "61: YOUTH REFUSAL/BREAKOFF",
      "62: PARENT & YOUTH REFUSAL/BREAKOFF",
      "63: UNABLE TO LOCATE FAMILY UNIT & YOUTH",
      "64: UNABLE TO LOCATE YOUTH",
      "65: DECEASED",
      "66: OTHER",
      "67: DO NOT REFIELD (VERY DIFFICULT CASE)",
      "68: MILITARY SAMPLE DROPPED",
      "69: SUPPLEMENTAL MALE POOR WHITE SAMPLE DROPPED",
      "70: SUPPLEMENTAL FEMALE POOR WHITE SAMPLE DROPPED",
      "71: YOUTH REFUSAL - VERY DIFFICULT CASE"))
  data$R7703500 <- factor(data$R7703500,
    levels=c(60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0),
    labels=c("60: 60  PARENT REFUSAL/BREAKOFF",
      "61: 61  YOUTH REFUSAL/BREAKOFF",
      "62: 62  PARENT & YOUTH REFUSAL/BREAKOFF",
      "63: 63  UNABLE TO LOCATE FAMILY UNIT & YOUTH",
      "64: 64  UNABLE TO LOCATE YOUTH",
      "65: 65  DECEASED",
      "66: 66  OTHER",
      "67: 67  DO NOT REFIELD (VERY DIFFICULT CASE)",
      "68: 68  MILITARY SAMPLE DROPPED",
      "69: 69  SUPPLEMENTAL MALE POOR WHITE SAMPLE DROPPED",
      "70: 70  SUPPLEMENTAL FEMALE POOR WHITE SAMPLE DROPPED",
      "71: 71  YOUTH REFUSAL - VERY DIFFICULT CASE",
      "72: 72  NOT FIELDED IN CURRENT SURVEY YEAR - VERY DIFFICULT CASE"))
  data$R8495900 <- factor(data$R8495900,
    levels=c(60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0,74.0),
    labels=c("60: 60  PARENT REFUSAL/BREAKOFF",
      "61: 61  YOUTH REFUSAL/BREAKOFF",
      "62: 62  PARENT & YOUTH REFUSAL/BREAKOFF",
      "63: 63  UNABLE TO LOCATE FAMILY UNIT & YOUTH",
      "64: 64  UNABLE TO LOCATE YOUTH",
      "65: 65  DECEASED",
      "66: 66  OTHER",
      "67: 67  DO NOT REFIELD (VERY DIFFICULT CASE)",
      "68: 68  MILITARY SAMPLE DROPPED",
      "69: 69  SUPPLEMENTAL MALE POOR WHITE SAMPLE DROPPED",
      "70: 70  SUPPLEMENTAL FEMALE POOR WHITE SAMPLE DROPPED",
      "71: 71  YOUTH REFUSAL - VERY DIFFICULT CASE",
      "72: 72  NOT FIELDED IN CURRENT SURVEY YEAR - VERY DIFFICULT CASE",
      "73: 73  NOT INTERVIEWED - INCARCERATED",
      "74: 74  NOT INTERVIEWED - IN MILITARY"))
  data$T0987500 <- factor(data$T0987500,
    levels=c(60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0,74.0),
    labels=c("60: 60  PARENT REFUSAL/BREAKOFF",
      "61: 61  YOUTH REFUSAL/BREAKOFF",
      "62: 62  PARENT & YOUTH REFUSAL/BREAKOFF",
      "63: 63  UNABLE TO LOCATE FAMILY UNIT & YOUTH",
      "64: 64  UNABLE TO LOCATE YOUTH",
      "65: 65  DECEASED",
      "66: 66  OTHER",
      "67: 67  DO NOT REFIELD (VERY DIFFICULT CASE)",
      "68: 68  MILITARY SAMPLE DROPPED",
      "69: 69  SUPPLEMENTAL MALE POOR WHITE SAMPLE DROPPED",
      "70: 70  SUPPLEMENTAL FEMALE POOR WHITE SAMPLE DROPPED",
      "71: 71  YOUTH REFUSAL - VERY DIFFICULT CASE",
      "72: 72  NOT FIELDED IN CURRENT SURVEY YEAR - VERY DIFFICULT CASE",
      "73: 73  NOT INTERVIEWED - INCARCERATED",
      "74: 74  NOT INTERVIEWED - IN MILITARY"))
  data$T2209800 <- factor(data$T2209800,
    levels=c(60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0,74.0),
    labels=c("60: 60  PARENT REFUSAL/BREAKOFF",
      "61: 61  YOUTH REFUSAL/BREAKOFF",
      "62: 62  PARENT & YOUTH REFUSAL/BREAKOFF",
      "63: 63  UNABLE TO LOCATE FAMILY UNIT & YOUTH",
      "64: 64  UNABLE TO LOCATE YOUTH",
      "65: 65  DECEASED",
      "66: 66  OTHER",
      "67: 67  DO NOT REFIELD (VERY DIFFICULT CASE)",
      "68: 68  MILITARY SAMPLE DROPPED",
      "69: 69  SUPPLEMENTAL MALE POOR WHITE SAMPLE DROPPED",
      "70: 70  SUPPLEMENTAL FEMALE POOR WHITE SAMPLE DROPPED",
      "71: 71  YOUTH REFUSAL - VERY DIFFICULT CASE",
      "72: 72  NOT FIELDED IN CURRENT SURVEY YEAR - VERY DIFFICULT CASE",
      "73: 73  NOT INTERVIEWED - INCARCERATED",
      "74: 74  NOT INTERVIEWED - IN MILITARY"))
  data$T3107600 <- factor(data$T3107600,
    levels=c(60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0,74.0),
    labels=c("60: 60  PARENT REFUSAL/BREAKOFF",
      "61: 61  YOUTH REFUSAL/BREAKOFF",
      "62: 62  PARENT & YOUTH REFUSAL/BREAKOFF",
      "63: 63  UNABLE TO LOCATE FAMILY UNIT & YOUTH",
      "64: 64  UNABLE TO LOCATE YOUTH",
      "65: 65  DECEASED",
      "66: 66  OTHER",
      "67: 67  DO NOT REFIELD (VERY DIFFICULT CASE)",
      "68: 68  MILITARY SAMPLE DROPPED",
      "69: 69  SUPPLEMENTAL MALE POOR WHITE SAMPLE DROPPED",
      "70: 70  SUPPLEMENTAL FEMALE POOR WHITE SAMPLE DROPPED",
      "71: 71  YOUTH REFUSAL - VERY DIFFICULT CASE",
      "72: 72  NOT FIELDED IN CURRENT SURVEY YEAR - VERY DIFFICULT CASE",
      "73: 73  NOT INTERVIEWED - INCARCERATED",
      "74: 74  NOT INTERVIEWED - IN MILITARY"))
  data$T4112100 <- factor(data$T4112100,
    levels=c(60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0,74.0),
    labels=c("60: 60  PARENT REFUSAL/BREAKOFF",
      "61: 61  YOUTH REFUSAL/BREAKOFF",
      "62: 62  PARENT & YOUTH REFUSAL/BREAKOFF",
      "63: 63  UNABLE TO LOCATE FAMILY UNIT & YOUTH",
      "64: 64  UNABLE TO LOCATE YOUTH",
      "65: 65  DECEASED",
      "66: 66  OTHER",
      "67: 67  DO NOT REFIELD (VERY DIFFICULT CASE)",
      "68: 68  MILITARY SAMPLE DROPPED",
      "69: 69  SUPPLEMENTAL MALE POOR WHITE SAMPLE DROPPED",
      "70: 70  SUPPLEMENTAL FEMALE POOR WHITE SAMPLE DROPPED",
      "71: 71  YOUTH REFUSAL - VERY DIFFICULT CASE",
      "72: 72  NOT FIELDED IN CURRENT SURVEY YEAR - VERY DIFFICULT CASE",
      "73: 73  NOT INTERVIEWED - INCARCERATED",
      "74: 74  NOT INTERVIEWED - IN MILITARY"))
  data$T5022300 <- factor(data$T5022300,
    levels=c(60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0,74.0),
    labels=c("60: 60  PARENT REFUSAL/BREAKOFF",
      "61: 61  YOUTH REFUSAL/BREAKOFF",
      "62: 62  PARENT & YOUTH REFUSAL/BREAKOFF",
      "63: 63  UNABLE TO LOCATE FAMILY UNIT & YOUTH",
      "64: 64  UNABLE TO LOCATE YOUTH",
      "65: 65  DECEASED",
      "66: 66  OTHER",
      "67: 67  DO NOT REFIELD (VERY DIFFICULT CASE)",
      "68: 68  MILITARY SAMPLE DROPPED",
      "69: 69  SUPPLEMENTAL MALE POOR WHITE SAMPLE DROPPED",
      "70: 70  SUPPLEMENTAL FEMALE POOR WHITE SAMPLE DROPPED",
      "71: 71  YOUTH REFUSAL - VERY DIFFICULT CASE",
      "72: 72  NOT FIELDED IN CURRENT SURVEY YEAR - VERY DIFFICULT CASE",
      "73: 73  NOT INTERVIEWED - INCARCERATED",
      "74: 74  NOT INTERVIEWED - IN MILITARY"))
  data$T5770600 <- factor(data$T5770600,
    levels=c(60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0,74.0,75.0),
    labels=c("60: 60  PARENT REFUSAL/BREAKOFF",
      "61: 61  YOUTH REFUSAL/BREAKOFF",
      "62: 62  PARENT & YOUTH REFUSAL/BREAKOFF",
      "63: 63  UNABLE TO LOCATE FAMILY UNIT & YOUTH",
      "64: 64  UNABLE TO LOCATE YOUTH",
      "65: 65  DECEASED",
      "66: 66  OTHER",
      "67: 67  DO NOT REFIELD (VERY DIFFICULT CASE)",
      "68: 68  MILITARY SAMPLE DROPPED",
      "69: 69  SUPPLEMENTAL MALE POOR WHITE SAMPLE DROPPED",
      "70: 70  SUPPLEMENTAL FEMALE POOR WHITE SAMPLE DROPPED",
      "71: 71  YOUTH REFUSAL - VERY DIFFICULT CASE",
      "72: 72  NOT FIELDED IN CURRENT SURVEY YEAR - VERY DIFFICULT CASE",
      "73: 73  NOT INTERVIEWED - INCARCERATED",
      "74: 74  NOT INTERVIEWED - IN MILITARY",
      "75: 75 DECEASED - MEMBER OF DROPPED SPECIAL SAMPLE"))
  return(data)
}

varlabels <- c("ID# (1-12686) 79",
  "SAMPLE ID  79 INT",
  "RACL/ETHNIC COHORT /SCRNR 79",
  "SEX OF R 79",
  "ILL ACT RUN AWAY PAST YR (AGE <18) 80",
  "ILL ACT INTENTION DAMAGED PROP PAST 80",
  "ILL ACT FOUGHT @ SCHOOL/WRK PAST YR 80",
  "ILL ACT SHOPLIFTED PAST YR 80",
  "ILL ACT STEEL PAST YR (<$50) 80",
  "ILL ACT STEEL PAST YR (>$50) 80",
  "ILL ACT USED FORCE OBTAIN THINGS YR 80",
  "ILL ACT # SERIOUS THREAT HIT PAST 80",
  "ILL ACT ATTACK W/INTNT INJR/KILL PAST 80",
  "ILL ACT SOLD MARJ PAST YR 80",
  "ILL ACT SOLD HARD DRUGS PAST YR 80",
  "ILL ACT ATTEMPTED TO 80",
  "ILL ACT TAKE AUTO W/O PERM PAST YR 80",
  "ILL ACT BROKEN INTO A BUILDING PAST 80",
  "ILL ACT KNOW SOLD/HELD STOLEN PAST 80",
  "ILL ACT AID GAMBLING OPER PAST YR 80",
  "STOP BY POLICE O/THAN MIN TRAFIC OFF 80",
  "TIMES STOP BY POLICE MINOR 80",
  "TIMES STOP POLICE EXCLD MINOR PAST YR 80",
  "AGE OF R 1ST TIME STOPPED BY POLICE 80",
  "EVER CHARGED W/ILGL ACT 80",
  "TIMES CHARGE W/ILGL ACT EXCLD MINOR 80",
  "TIMES CHARGE W/ILGL ACT EXCLD MINOR 80",
  "MONTH M-RCNT ILGL ACT CHARGE 80",
  "YR M-RCNT ILGL ACT CHARGE 80",
  "AGE @ TIME 1ST ILGL ACT CHARGE 80",
  "EVER CHARGED ILGL ACT ADLT COURT 80",
  "EVER CONVICTED ON ILGL ACT CHARGES 80",
  "TIMES CONVICTED ILGL ACT EXCLD MINOR 80",
  "AGE @ TIME 1ST ILGL ACT CONVICTION 80",
  "MONTH M-RCNT ILGL ACT CONVICTION 80",
  "YR M-RCNT ILGL ACT CONVICTION 80",
  "ILL ACT ASSAULT 80",
  "ILL ACT ROBBERY 80",
  "ILL ACT THEFT 80",
  "ILL ACT THEFT BY DECEPTION 80",
  "ILL ACT STOLEN PROP 80",
  "ILL ACT DESTRUCTION OF PROP 80",
  "ILL ACT OTHER PROP OFFENSE 80",
  "ILL ACT GAMBLING 80",
  "ILL ACT COMMERCIAL VICE 80",
  "ILL ACT POSSESSION OF MARJ/HASH 80",
  "ILL ACT SELL MARJ/HASH 80",
  "ILL ACT POSSESSION OTHER DRUGS 80",
  "ILL ACT SALE/MANUF ILLICIT DRUGS 80",
  "ILL ACT MAJOR TRAFIC OFFENSE 80",
  "ILL ACT STATUS OFFENSE 80",
  "ILL ACT OTHER 80",
  "EVER CONVICTED ILGL ACT ADLT COURT 80",
  "EVER REFUSED COURT-RELATED COUNSELING 80",
  "TIMES REFER COURT-RELATED COUNSELING 80",
  "AGE @ TIME 1ST COURT-REL COUNSELING 80",
  "MONTH M-RCNT COURT-REL COUNSELING END 80",
  "YR M-RCNT COURT-REL COUNSELING END 80",
  "EVER BEEN ON PROBATION 80",
  "TIMES ON PROBATION 80",
  "DATE M-RCNT PROBATION PRD END 80",
  "YR M-RCNT PROBATION PRD END 80",
  "EVER SNTNCD ANY CORP INSTITUTN 80",
  "TIMES SENT TO YTH CORP INSTITUTN 80",
  "TIMES SENT TO ADLT CORP INSTITUTN 80",
  "MONTH M-RCNT RLSE CORP INSTITUTN 80",
  "YR M-RCNT RLSE CORP INSTITUTN 80",
  "REASON FOR NONINT 80",
  "REASON FOR NONINT 81",
  "REASON FOR NONINT 82",
  "REASON FOR NONINT 83",
  "REASON FOR NONINT 84",
  "REASON FOR NONINT 85",
  "REASON FOR NONINT 86",
  "REASON FOR NONINT 87",
  "REASON FOR NONINT 88",
  "REASON FOR NONINT 89",
  "REASON FOR NONINT 90",
  "REASON FOR NONINT 91",
  "REASON FOR NONINT 92",
  "REASONS FOR NON-INT 93",
  "ARRESTED, IN POLICE TROUBLE 94",
  "REASONS FOR NON-INT 94",
  "REASONS FOR NON-INT 96",
  "REASONS FOR NON-INT 1998",
  "REASONS FOR NON-INT 2000",
  "REASONS FOR NON-INT 2002",
  "REASONS FOR NON-INT 2004",
  "REASONS FOR NON-INT 2006",
  "REASONS FOR NON-INT 2008",
  "REASONS FOR NON-INT 2010",
  "REASONS FOR NON-INT 2012",
  "REASONS FOR NON-INT 2014",
  "REASONS FOR NON-INT 2016"
)


# Use qnames rather than rnums

qnames = function(data) {
  names(data) <- c("CASEID",
     "SAMPLE_ID",   #     "SAMPLE ID  79 INT",
    "RACE", #     "RACL/ETHNIC COHORT /SCRNR 79",
    "SEX",  #     "SEX OF R 79",
    "DELIN_1_1980",   #   "ILL ACT RUN AWAY PAST YR (AGE <18) 80",
    "DELIN_4_1980",   #   "ILL ACT INTENTION DAMAGED PROP PAST 80",
    "DELIN_5_1980",   #   "ILL ACT FOUGHT @ SCHOOL/WRK PAST YR 80",
    "DELIN_6_1980",   #   "ILL ACT SHOPLIFTED PAST YR 80",
    "DELIN_7_1980",   #   "ILL ACT STEEL PAST YR (<$50) 80",
    "DELIN_8_1980",   #   "ILL ACT STEEL PAST YR (>$50) 80",
    "DELIN_9_1980",   #   "ILL ACT USED FORCE OBTAIN THINGS YR 80",
    "DELIN_10_1980",    #     "ILL ACT # SERIOUS THREAT HIT PAST 80",
    "DELIN_11_1980",    #     "ILL ACT ATTACK W/INTNT INJR/KILL PAST 80",
    "DELIN_14_1980",    #     "ILL ACT SOLD MARJ PAST YR 80",
    "DELIN_15_1980",    #     "ILL ACT SOLD HARD DRUGS PAST YR 80",
    "DELIN_16_1980",    #     "ILL ACT ATTEMPTED TO 80",
    "DELIN_17_1980",    #     "ILL ACT TAKE AUTO W/O PERM PAST YR 80",
    "DELIN_18_1980",    #     "ILL ACT BROKEN INTO A BUILDING PAST 80",
    "DELIN_19_1980",    #     "ILL ACT KNOW SOLD/HELD STOLEN PAST 80",
    "DELIN_20_1980",    #     "ILL ACT AID GAMBLING OPER PAST YR 80",
    "POLICE_1_1980",    #     "STOP BY POLICE O/THAN MIN TRAFIC OFF 80",
    "POLICE_1A_1980",   #     "TIMES STOP BY POLICE MINOR 80",
    "POLICE_1B_1980",   #     "TIMES STOP POLICE EXCLD MINOR PAST YR 80",
    "POLICE_1C_1980",   #     "AGE OF R 1ST TIME STOPPED BY POLICE 80",
    "POLICE_2_1980",    #     "EVER CHARGED W/ILGL ACT 80",
    "POLICE_2A_1980",   #     "TIMES CHARGE W/ILGL ACT EXCLD MINOR 80",
    "POLICE_2B_1980",   #     "TIMES CHARGE W/ILGL ACT EXCLD MINOR 80",
    "POLICE_2C_M_1980", #     "MONTH M-RCNT ILGL ACT CHARGE 80",
    "POLICE_2C_Y_1980", #     "YR M-RCNT ILGL ACT CHARGE 80",
    "POLICE_2D_1980",   #     "AGE @ TIME 1ST ILGL ACT CHARGE 80",
    "POLICE_2E_1980",   #     "EVER CHARGED ILGL ACT ADLT COURT 80",
    "POLICE_3_1980",    #     "EVER CONVICTED ON ILGL ACT CHARGES 80",
    "POLICE_3A_1980",   #     "TIMES CONVICTED ILGL ACT EXCLD MINOR 80",
    "POLICE_3B_1980",   #     "AGE @ TIME 1ST ILGL ACT CONVICTION 80",
    "POLICE_3C_M_1980", #     "MONTH M-RCNT ILGL ACT CONVICTION 80",
    "POLICE_3C_Y_1980", #     "YR M-RCNT ILGL ACT CONVICTION 80",
    "POLICE_3D_01_1980",    #     "ILL ACT ASSAULT 80",
    "POLICE_3D_02_1980",    #     "ILL ACT ROBBERY 80",
    "POLICE_3D_03_1980",    #     "ILL ACT THEFT 80",
    "POLICE_3D_04_1980",    #     "ILL ACT THEFT BY DECEPTION 80",
    "POLICE_3D_05_1980",    #     "ILL ACT STOLEN PROP 80",
    "POLICE_3D_06_1980",    #     "ILL ACT DESTRUCTION OF PROP 80",
    "POLICE_3D_07_1980",    #     "ILL ACT OTHER PROP OFFENSE 80",
    "POLICE_3D_08_1980",    #     "ILL ACT GAMBLING 80",
    "POLICE_3D_09_1980",    #     "ILL ACT COMMERCIAL VICE 80",
    "POLICE_3D_10_1980",    #     "ILL ACT POSSESSION OF MARJ/HASH 80",
    "POLICE_3D_11_1980",    #     "ILL ACT SELL MARJ/HASH 80",
    "POLICE_3D_12_1980",    #     "ILL ACT POSSESSION OTHER DRUGS 80",
    "POLICE_3D_13_1980",    #     "ILL ACT SALE/MANUF ILLICIT DRUGS 80",
    "POLICE_3D_14_1980",    #     "ILL ACT MAJOR TRAFIC OFFENSE 80",
    "POLICE_3D_16_1980",    #     "ILL ACT STATUS OFFENSE 80",
    "POLICE_3D_17_1980",    #     "ILL ACT OTHER 80",
    "POLICE_3E_1980",   #     "EVER CONVICTED ILGL ACT ADLT COURT 80",
    "POLICE_4_1980",    #     "EVER REFUSED COURT-RELATED COUNSELING 80",
    "POLICE_4A_1980",   #     "TIMES REFER COURT-RELATED COUNSELING 80",
    "POLICE_4B_1980",   #     "AGE @ TIME 1ST COURT-REL COUNSELING 80",
    "POLICE_4C_M_1980", #     "MONTH M-RCNT COURT-REL COUNSELING END 80",
    "POLICE_4C_Y_1980", #     "YR M-RCNT COURT-REL COUNSELING END 80",
    "POLICE_6_1980",    #     "EVER BEEN ON PROBATION 80",
    "POLICE_6A_1980",     #   "TIMES ON PROBATION 80",
    "POLICE_6B_M_1980", #     "DATE M-RCNT PROBATION PRD END 80",
    "POLICE_6B_Y_1980", #     "YR M-RCNT PROBATION PRD END 80",
    "POLICE_7_1980",    #     "EVER SNTNCD ANY CORP INSTITUTN 80",
    "POLICE_7A_1980",   #     "TIMES SENT TO YTH CORP INSTITUTN 80",
    "POLICE_7B_1980",   #     "TIMES SENT TO ADLT CORP INSTITUTN 80",
    "POLICE_7C_M_1980", #     "MONTH M-RCNT RLSE CORP INSTITUTN 80",
    "POLICE_7C_Y_1980", #     "YR M-RCNT RLSE CORP INSTITUTN 80",
    "RNI_1980",         #     "REASON FOR NONINT 80",
    "RNI_1981",         #     "REASON FOR NONINT 81",
    "RNI_1982",         #     "REASON FOR NONINT 82",
    "RNI_1983",         #     "REASON FOR NONINT 83",
    "RNI_1984",         #     "REASON FOR NONINT 84",
    "RNI_1985",         #     "REASON FOR NONINT 85",
    "RNI_1986",         #     "REASON FOR NONINT 86",
    "RNI_1987",         #     "REASON FOR NONINT 87",
    "RNI_1988",         #     "REASON FOR NONINT 88",     
    "RNI_1989",         #     "REASON FOR NONINT 89",
    "RNI_1990",         #     "REASON FOR NONINT 90",
    "RNI_1991",         #     "REASON FOR NONINT 91",
    "RNI_1992",         #     "REASON FOR NONINT 92",
    "RNI_1993",         #     "REASONS FOR NON-INT 93",
    "ARREST_7N_1994",   #     "ARRESTED, IN POLICE TROUBLE 94",
    "RNI_1994",         #     "REASONS FOR NON-INT 94",
    "RNI_1996",         #     "REASONS FOR NON-INT 96",
    "RNI_1998",         #     "REASONS FOR NON-INT 1998",
    "RNI_2000",         #     "REASONS FOR NON-INT 2000",
    "RNI_2002",         #     "REASONS FOR NON-INT 2002",
    "RNI_2004",         #     "REASONS FOR NON-INT 2004",
    "RNI_2006",         #     "REASONS FOR NON-INT 2006",
    "RNI_2008",         #     "REASONS FOR NON-INT 2008",
    "RNI_2010",         #     "REASONS FOR NON-INT 2010",
    "RNI_2012",         #     "REASONS FOR NON-INT 2012",
    "RNI_2014",         #     "REASONS FOR NON-INT 2014",
    "RNI_2016")         #     "REASONS FOR NON-INT 2016"

  return(data)
}


#********************************************************************************************************

df_crime_gen1 <- qnames(vallabels(new_data))

#************************************************************************************************************

remove(new_data)
```

``` r
# is average deliquency score; so that missing data doesn't deflate score
df_crime_gen1 = 
  df_crime_gen1 %>% mutate(
    SubjectTag=CASEID*100,
    DELIN_AVERAGE = rowMeans(select(.,starts_with("DELIN_")),na.rm=TRUE)#,
#DELIN_Median = rowMedians(select(., starts_with("DELIN_")),na.rm=TRUE)
)


# creating smaller dataframe to only include variables of interest
df_spsp_gen1=select(df_crime_gen1,
                    SubjectTag,
                    CASEID,
                    RACE,
                    SEX,
                    DELIN_AVERAGE)

# recoding Race and Sex ; todo, name race to minority

df_spsp_gen1=mutate(df_spsp_gen1,
                     # race is 0 for white; and 1 for non-white
                    RACE = case_when(RACE == 3 ~ 0,
                                     RACE == 1 | RACE == 2 ~ 1),
                    # have female be 0 and male be 1
                    SEX = case_when(SEX == 2 ~ 0,
                         TRUE ~ 1)
                    )


# add to spsp df
df_spsp_gen1$CESD_7_1994=df_dep_gen1$CESD_SCORE_7_ITEM_1994
df_spsp_gen1$CESD_20_1992=as.numeric(df_dep_gen1$CESD_SCORE_20_ITEM_1992)
df_spsp_gen1$CESD_7_1992=df_dep_gen1$CESD_SCORE_7_ITEM_1992

# 
cor(df_spsp_gen1,use="pairwise.complete")
```

    ##                SubjectTag      CASEID          RACE           SEX DELIN_AVERAGE
    ## SubjectTag     1.00000000  1.00000000  0.2033318028  0.0386494994   -0.01886052
    ## CASEID         1.00000000  1.00000000  0.2033318028  0.0386494994   -0.01886052
    ## RACE           0.20333180  0.20333180  1.0000000000  0.0001666453   -0.03742342
    ## SEX            0.03864950  0.03864950  0.0001666453  1.0000000000    0.25526995
    ## DELIN_AVERAGE -0.01886052 -0.01886052 -0.0374234159  0.2552699546    1.00000000
    ## CESD_7_1994    0.04253523  0.04253523  0.0814601930 -0.1635641661    0.03231583
    ## CESD_20_1992   0.04534349  0.04534349  0.1344010296 -0.0938880066    0.07036204
    ## CESD_7_1992    0.03244973  0.03244973  0.0970550584 -0.1161312642    0.06623573
    ##               CESD_7_1994 CESD_20_1992 CESD_7_1992
    ## SubjectTag     0.04253523   0.04534349  0.03244973
    ## CASEID         0.04253523   0.04534349  0.03244973
    ## RACE           0.08146019   0.13440103  0.09705506
    ## SEX           -0.16356417  -0.09388801 -0.11613126
    ## DELIN_AVERAGE  0.03231583   0.07036204  0.06623573
    ## CESD_7_1994    1.00000000   0.42433473  0.42387813
    ## CESD_20_1992   0.42433473   1.00000000  0.90160212
    ## CESD_7_1992    0.42387813   0.90160212  1.00000000

``` r
# convert sex into factor
df_spsp_gen1$SEX=as.factor(df_spsp_gen1$SEX)
summary(df_spsp_gen1)
```

    ##    SubjectTag          CASEID           RACE       SEX      DELIN_AVERAGE   
    ##  Min.   :    100   Min.   :    1   Min.   :0.000   0:6283   Min.   :0.0000  
    ##  1st Qu.: 317225   1st Qu.: 3172   1st Qu.:0.000   1:6403   1st Qu.:0.0000  
    ##  Median : 634350   Median : 6344   Median :0.000            Median :0.1333  
    ##  Mean   : 634350   Mean   : 6344   Mean   :0.408            Mean   :0.2974  
    ##  3rd Qu.: 951475   3rd Qu.: 9515   3rd Qu.:1.000            3rd Qu.:0.3750  
    ##  Max.   :1268600   Max.   :12686   Max.   :1.000            Max.   :5.6250  
    ##                                                             NA's   :861     
    ##   CESD_7_1994     CESD_20_1992     CESD_7_1992    
    ##  Min.   : 0.00   Min.   : 0.000   Min.   : 0.000  
    ##  1st Qu.: 0.00   1st Qu.: 3.000   1st Qu.: 1.000  
    ##  Median : 3.00   Median : 7.000   Median : 3.000  
    ##  Mean   : 3.77   Mean   : 9.754   Mean   : 4.201  
    ##  3rd Qu.: 6.00   3rd Qu.:14.000   3rd Qu.: 6.000  
    ##  Max.   :21.00   Max.   :59.000   Max.   :21.000  
    ##  NA's   :3811    NA's   :3708     NA's   :3755

# Data Linking

``` r
#link dyads

dsLinks <- Links79PairExpanded
dsLinks$R <-dsLinks$RFull
dsLinking <- dsLinks

outcomeNames=c("RACE",
               "SEX",
               "CESD_20_1992",
               "DELIN_AVERAGE",
               "CESD_7_1994", 
               "CESD_7_1992")

dsSingle_G1 <- CreatePairLinksSingleEntered(
                            outcomeDataset = df_spsp_gen1,
                            linksPairDataset = dsLinking[ dsLinking$RelationshipPath == "Gen1Housemates" & dsLinking$RFull==.5, ],
                            outcomeNames = outcomeNames
                            )

#mean for ced 20 1992
dsSingle_G1$CESD_20_1992_MEAN=.5*dsSingle_G1$CESD_20_1992_S1+.5*dsSingle_G1$CESD_20_1992_S2

#mean for ced 7 1992
dsSingle_G1$CESD_7_1992_MEAN=.5*dsSingle_G1$CESD_7_1992_S1+.5*dsSingle_G1$CESD_7_1992_S2

#mean for ced 7 1994
dsSingle_G1$CESD_7_1994_MEAN=.5*dsSingle_G1$CESD_7_1994_S1+.5*dsSingle_G1$CESD_7_1994_S2

#mean for DELIN_AVERAGE
dsSingle_G1$DELIN_AVERAGE_MEAN=.5*dsSingle_G1$DELIN_AVERAGE_S1+.5*dsSingle_G1$DELIN_AVERAGE_S2
```

# CLASSIC REGRESSION

``` r
### CLASSIC REGRESSION GOES HERE

#note: you only need s1 race because they're determined by the mother
model_original_7_1992 <- lm(DELIN_AVERAGE_MEAN ~ 
                             CESD_7_1992_MEAN +
                             as.factor(SEX_S1) + 
                             as.factor(RACE_S1)+
                            as.factor(SEX_S2), 
                           data = dsSingle_G1)



model_original_20_1992 <- lm(DELIN_AVERAGE_MEAN ~ 
                             CESD_20_1992_MEAN +
                             as.factor(SEX_S1) + 
                             as.factor(RACE_S1)+
                            as.factor(SEX_S2), 
                           data = dsSingle_G1)



model_original_7_1994 <- lm(DELIN_AVERAGE_MEAN ~ 
                             CESD_7_1994_MEAN +
                             as.factor(SEX_S1) + 
                             as.factor(RACE_S1)+
                            as.factor(SEX_S2) , 
                           data = dsSingle_G1)
# results

summary(model_original_20_1992)
```

    ## 
    ## Call:
    ## lm(formula = DELIN_AVERAGE_MEAN ~ CESD_20_1992_MEAN + as.factor(SEX_S1) + 
    ##     as.factor(RACE_S1) + as.factor(SEX_S2), data = dsSingle_G1)
    ## 
    ## Residuals:
    ##     Min      1Q  Median      3Q     Max 
    ## -0.6199 -0.2185 -0.0968  0.1133  4.0560 
    ## 
    ## Coefficients:
    ##                      Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)          0.163203   0.015686  10.405  < 2e-16 ***
    ## CESD_20_1992_MEAN    0.007680   0.001009   7.609 3.70e-14 ***
    ## as.factor(SEX_S1)1   0.115075   0.013060   8.811  < 2e-16 ***
    ## as.factor(RACE_S1)1 -0.080361   0.013304  -6.041 1.73e-09 ***
    ## as.factor(SEX_S2)1   0.109709   0.013066   8.397  < 2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.3543 on 2952 degrees of freedom
    ##   (1313 observations deleted due to missingness)
    ## Multiple R-squared:  0.06887,    Adjusted R-squared:  0.06761 
    ## F-statistic: 54.58 on 4 and 2952 DF,  p-value: < 2.2e-16

``` r
summary(model_original_7_1992)
```

    ## 
    ## Call:
    ## lm(formula = DELIN_AVERAGE_MEAN ~ CESD_7_1992_MEAN + as.factor(SEX_S1) + 
    ##     as.factor(RACE_S1) + as.factor(SEX_S2), data = dsSingle_G1)
    ## 
    ## Residuals:
    ##     Min      1Q  Median      3Q     Max 
    ## -0.5521 -0.2207 -0.0944  0.1091  4.1084 
    ## 
    ## Coefficients:
    ##                      Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)          0.160594   0.016089   9.981  < 2e-16 ***
    ## CESD_7_1992_MEAN     0.017732   0.002338   7.583 4.50e-14 ***
    ## as.factor(SEX_S1)1   0.115824   0.013156   8.804  < 2e-16 ***
    ## as.factor(RACE_S1)1 -0.077193   0.013284  -5.811 6.88e-09 ***
    ## as.factor(SEX_S2)1   0.111406   0.013164   8.463  < 2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.3545 on 2918 degrees of freedom
    ##   (1347 observations deleted due to missingness)
    ## Multiple R-squared:  0.06871,    Adjusted R-squared:  0.06743 
    ## F-statistic: 53.82 on 4 and 2918 DF,  p-value: < 2.2e-16

``` r
summary(model_original_7_1994)
```

    ## 
    ## Call:
    ## lm(formula = DELIN_AVERAGE_MEAN ~ CESD_7_1994_MEAN + as.factor(SEX_S1) + 
    ##     as.factor(RACE_S1) + as.factor(SEX_S2), data = dsSingle_G1)
    ## 
    ## Residuals:
    ##     Min      1Q  Median      3Q     Max 
    ## -0.5545 -0.2164 -0.0932  0.1098  4.0142 
    ## 
    ## Coefficients:
    ##                      Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)          0.167256   0.015960  10.480  < 2e-16 ***
    ## CESD_7_1994_MEAN     0.016430   0.002283   7.198 7.78e-13 ***
    ## as.factor(SEX_S1)1   0.124344   0.013317   9.337  < 2e-16 ***
    ## as.factor(RACE_S1)1 -0.075589   0.013344  -5.665 1.62e-08 ***
    ## as.factor(SEX_S2)1   0.115465   0.013350   8.649  < 2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.3557 on 2875 degrees of freedom
    ##   (1390 observations deleted due to missingness)
    ## Multiple R-squared:  0.07031,    Adjusted R-squared:  0.06902 
    ## F-statistic: 54.36 on 4 and 2875 DF,  p-value: < 2.2e-16

# discordant analyses

``` r
# 
# model_discord_delin <- lm(DELIN_AVERAGE_DIFF ~ 
# CESD_20_1992_MEAN +
# DELIN_AVERAGE_MEAN + 
# CESD_20_1992_DIFF + 
# as.factor(SEX_S1)+ 
# as.factor(SEX_S2)+
# as.factor(RACE_S1), 
# data= dsDouble_DELIN)
# 
# summary(model_discord_delin)
# 
# model_discord_delin2 <- lm(DELIN_AVERAGE_DIFF ~ 
# CESD_7_1994_MEAN + 
# DELIN_AVERAGE_MEAN + 
# CESD_7_1994_DIFF +
# as.factor(SEX_S1)+ 
# as.factor(SEX_S2)+
# as.factor(RACE_S1), 
# data= dsDouble_DELIN)
# 
# summary(model_discord_delin2)
# 
# model_discord_delin3 <- lm(DELIN_AVERAGE_DIFF ~ 
# CESD_7_1992_MEAN + 
# DELIN_AVERAGE_MEAN + 
# CESD_7_1992_DIFF +
# as.factor(SEX_S1)+ 
# as.factor(SEX_S2)+
# as.factor(RACE_S1), 
# data= dsDouble_DELIN)
# 
# summary(model_discord_delin3)
# 




data_DEP = dsSingle_G1 %>%
  filter(!is.na(DELIN_AVERAGE_S1) & !is.na(DELIN_AVERAGE_S2)
         ) %>%
  discord_data (outcome = "DELIN_AVERAGE",
                      predictors=c("CESD_7_1992",
                                   "CESD_20_1992",
                                   "CESD_7_1994"),
                      id = "ExtendedID",
                      sex = "SEX",
                      race = "RACE",
                      pair_identifiers=c("_S1","_S2"),
                      demographics = "both"
                      )
```

    ## Warning: Specified id column does not contain unique values for each kin-pair.
    ## Adding row-wise ID for restructuring data into paired format for analysis.
    ## For more details, see <https://github.com/R-Computing-Lab/discord/issues/6>.

``` r
model_discord_CESD_7_1992= lm(data=data_DEP,
                              DELIN_AVERAGE_diff ~ 
                                DELIN_AVERAGE_mean+
                                CESD_7_1992_diff + 
                                CESD_7_1992_mean+
                                factor(SEX_1)+
                                factor(SEX_2)+
                                factor(RACE_1) )

model_discord_CESD_20_1992=lm(data=data_DEP,
                              DELIN_AVERAGE_diff ~ 
                                DELIN_AVERAGE_mean+
                                CESD_20_1992_diff + 
                                CESD_20_1992_mean+
                                factor(SEX_1)+
                                factor(SEX_2)+
                                factor(RACE_1) )


model_discord_CESD_7_1994=  lm(data=data_DEP,
                              DELIN_AVERAGE_diff ~ 
                                DELIN_AVERAGE_mean+
                                CESD_7_1994_diff + 
                                CESD_7_1994_mean+
                                factor(SEX_1)+
                                factor(SEX_2)+
                                factor(RACE_1) )


summary(model_discord_CESD_7_1992)
```

    ## 
    ## Call:
    ## lm(formula = DELIN_AVERAGE_diff ~ DELIN_AVERAGE_mean + CESD_7_1992_diff + 
    ##     CESD_7_1992_mean + factor(SEX_1) + factor(SEX_2) + factor(RACE_1), 
    ##     data = data_DEP)
    ## 
    ## Residuals:
    ##     Min      1Q  Median      3Q     Max 
    ## -4.2957 -0.0977 -0.0100  0.0963  2.1864 
    ## 
    ## Coefficients:
    ##                      Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)         0.0415619  0.0137888   3.014   0.0026 ** 
    ## DELIN_AVERAGE_mean  1.0020598  0.0155794  64.319  < 2e-16 ***
    ## CESD_7_1992_diff    0.0023632  0.0010846   2.179   0.0294 *  
    ## CESD_7_1992_mean   -0.0004149  0.0019785  -0.210   0.8339    
    ## factor(SEX_1)1      0.0598843  0.0116406   5.144 2.86e-07 ***
    ## factor(SEX_2)1     -0.0728653  0.0112694  -6.466 1.18e-10 ***
    ## factor(RACE_1)1     0.0043468  0.0111817   0.389   0.6975    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.2968 on 2916 degrees of freedom
    ##   (761 observations deleted due to missingness)
    ## Multiple R-squared:  0.6133, Adjusted R-squared:  0.6125 
    ## F-statistic: 770.7 on 6 and 2916 DF,  p-value: < 2.2e-16

``` r
summary(model_discord_CESD_7_1994)
```

    ## 
    ## Call:
    ## lm(formula = DELIN_AVERAGE_diff ~ DELIN_AVERAGE_mean + CESD_7_1994_diff + 
    ##     CESD_7_1994_mean + factor(SEX_1) + factor(SEX_2) + factor(RACE_1), 
    ##     data = data_DEP)
    ## 
    ## Residuals:
    ##     Min      1Q  Median      3Q     Max 
    ## -4.3417 -0.0996 -0.0097  0.0989  2.1864 
    ## 
    ## Coefficients:
    ##                      Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)         0.0522319  0.0137908   3.787 0.000155 ***
    ## DELIN_AVERAGE_mean  1.0111840  0.0157719  64.113  < 2e-16 ***
    ## CESD_7_1994_diff    0.0002161  0.0011020   0.196 0.844554    
    ## CESD_7_1994_mean   -0.0024121  0.0019406  -1.243 0.213980    
    ## factor(SEX_1)1      0.0558992  0.0119359   4.683 2.95e-06 ***
    ## factor(SEX_2)1     -0.0739959  0.0115649  -6.398 1.83e-10 ***
    ## factor(RACE_1)1     0.0022518  0.0113023   0.199 0.842093    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.2996 on 2873 degrees of freedom
    ##   (804 observations deleted due to missingness)
    ## Multiple R-squared:  0.6132, Adjusted R-squared:  0.6124 
    ## F-statistic: 759.2 on 6 and 2873 DF,  p-value: < 2.2e-16

``` r
summary(model_discord_CESD_20_1992)
```

    ## 
    ## Call:
    ## lm(formula = DELIN_AVERAGE_diff ~ DELIN_AVERAGE_mean + CESD_20_1992_diff + 
    ##     CESD_20_1992_mean + factor(SEX_1) + factor(SEX_2) + factor(RACE_1), 
    ##     data = data_DEP)
    ## 
    ## Residuals:
    ##     Min      1Q  Median      3Q     Max 
    ## -4.3402 -0.0989 -0.0088  0.0972  2.1739 
    ## 
    ## Coefficients:
    ##                      Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)         0.0410209  0.0135044   3.038  0.00241 ** 
    ## DELIN_AVERAGE_mean  1.0117765  0.0155494  65.069  < 2e-16 ***
    ## CESD_20_1992_diff   0.0006481  0.0004754   1.363  0.17290    
    ## CESD_20_1992_mean  -0.0003166  0.0008572  -0.369  0.71191    
    ## factor(SEX_1)1      0.0594045  0.0115551   5.141 2.91e-07 ***
    ## factor(SEX_2)1     -0.0731699  0.0112343  -6.513 8.62e-11 ***
    ## factor(RACE_1)1     0.0057677  0.0112499   0.513  0.60821    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.2979 on 2950 degrees of freedom
    ##   (727 observations deleted due to missingness)
    ## Multiple R-squared:  0.6156, Adjusted R-squared:  0.6148 
    ## F-statistic: 787.4 on 6 and 2950 DF,  p-value: < 2.2e-16

``` r
#How old is everyone? 

data_age <- readr::read_csv('default/default.csv')
```

    ## Rows: 12686 Columns: 7

    ## -- Column specification --------------------------------------------------------
    ## Delimiter: ","
    ## dbl (7): CASEID, Q1-3_A~M, Q1-3_A~Y, FAM-1B, SAMPLE_ID, SAMPLE_RACE, SAMPLE_SEX

    ## 
    ## i Use `spec()` to retrieve the full column specification for this data.
    ## i Specify the column types or set `show_col_types = FALSE` to quiet this message.

``` r
#Comment the one below out, it runs. Keep it in there is a warning, 

#data_age <- read.table('default.dat', sep=' ')
names(data_age) <- c('R0000100',
  'R0000300',
  'R0000500',
  'R0000600',
  'R0173600',
  'R0214700',
  'R0214800')


# Handle missing values

  data_age[data_age == -1] = NA  # Refused 
  data_age[data_age == -2] = NA  # Dont know 
  data_age[data_age == -3] = NA  # Invalid missing 
  data_age[data_age == -4] = NA  # Valid missing 
  data_age[data_age == -5] = NA  # Non-interview 


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


# Remove the '#' before the following lines to rename variables using Qnames instead of Reference Numbers
data_age <- qnames(data_age)

summary(data_age)
```

    ##   CASEID_1979    Q1-3_A~M_1979    Q1-3_A~Y_1979    FAM-1B_1979  
    ##  Min.   :    1   Min.   : 1.000   Min.   :57.00   Min.   :14.0  
    ##  1st Qu.: 3172   1st Qu.: 4.000   1st Qu.:58.00   1st Qu.:16.0  
    ##  Median : 6344   Median : 7.000   Median :60.00   Median :18.0  
    ##  Mean   : 6344   Mean   : 6.495   Mean   :60.34   Mean   :17.9  
    ##  3rd Qu.: 9515   3rd Qu.: 9.000   3rd Qu.:62.00   3rd Qu.:20.0  
    ##  Max.   :12686   Max.   :12.000   Max.   :64.00   Max.   :22.0  
    ##  SAMPLE_ID_1979   SAMPLE_RACE_78SCRN SAMPLE_SEX_1979
    ##  Min.   : 1.000   Min.   :1.000      Min.   :1.000  
    ##  1st Qu.: 5.000   1st Qu.:2.000      1st Qu.:1.000  
    ##  Median : 9.000   Median :3.000      Median :1.000  
    ##  Mean   : 8.174   Mean   :2.434      Mean   :1.495  
    ##  3rd Qu.:12.000   3rd Qu.:3.000      3rd Qu.:2.000  
    ##  Max.   :20.000   Max.   :3.000      Max.   :2.000

``` r
#************************************************************************************************************
head(new_age_data)
```

    ## Error in head(new_age_data): object 'new_age_data' not found

``` r
names(new_age_data)
```

    ## Error in eval(expr, envir, enclos): object 'new_age_data' not found

``` r
summary(new_age_data) 
```

    ## Error in summary(new_age_data): object 'new_age_data' not found

``` r
#freq table for item 1
table(new_age_data$`FAM-1B_1979`) 
```

    ## Error in table(new_age_data$`FAM-1B_1979`): object 'new_age_data' not found

``` r
describe(new_age_data$`FAM-1B_1979`)
```

    ## Error in describe(new_age_data$`FAM-1B_1979`): object 'new_age_data' not found
