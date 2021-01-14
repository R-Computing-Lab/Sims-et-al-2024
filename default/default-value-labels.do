
label define vlR0000300 0 "0: < 1"  1 "1"  2 "2"  3 "3"  4 "4"  5 "5"  6 "6"  7 "7"  8 "8"  9 "9"  10 "10"  11 "11"  12 "12"  13 "13"  14 "14"  15 "15"  16 "16"  17 "17 TO 99999: 17+" 
label values R0000300 vlR0000300

label define vlR0000500 0 "0 TO 56: < 57"  57 "57"  58 "58"  59 "59"  60 "60"  61 "61"  62 "62"  63 "63"  64 "64"  65 "65"  66 "66"  67 "67"  68 "68"  69 "69"  70 "70"  71 "71"  72 "72"  73 "73 TO 99999: 73+" 
label values R0000500 vlR0000500

label define vlR0000600 0 "0 TO 13: < 14"  14 "14"  15 "15"  16 "16"  17 "17"  18 "18"  19 "19"  20 "20"  21 "21"  22 "22"  23 "23"  24 "24"  25 "25"  26 "26"  27 "27"  28 "28"  29 "29"  30 "30 TO 99999: 30+" 
label values R0000600 vlR0000600

label define vlR0173600 1 "CROSS MALE WHITE"  2 "CROSS MALE WH. POOR"  3 "CROSS MALE BLACK"  4 "CROSS MALE HISPANIC"  5 "CROSS FEMALE WHITE"  6 "CROSS FEMALE WH POOR"  7 "CROSS FEMALE BLACK"  8 "CROSS FEMALE HISPANIC"  9 "SUP MALE WH POOR"  10 "SUP MALE BLACK"  11 "SUP MALE HISPANIC"  12 "SUP FEM WH POOR"  13 "SUP FEMALE BLACK"  14 "SUP FEMALE HISPANIC"  15 "MIL MALE WHITE"  16 "MIL MALE BLACK"  17 "MIL MALE HISPANIC"  18 "MIL FEMALE WHITE"  19 "MIL FEMALE BLACK"  20 "MIL FEMALE HISPANIC" 
label values R0173600 vlR0173600

label define vlR0214700 1 "HISPANIC"  2 "BLACK"  3 "NON-BLACK, NON-HISPANIC" 
label values R0214700 vlR0214700

label define vlR0214800 1 "MALE"  2 "FEMALE" 
label values R0214800 vlR0214800
/* Crosswalk for Reference number & Question name
 * Uncomment and edit this RENAME statement to rename variables for ease of use.
 * This command does not guarantee uniqueness
 */
  /* *start* */
/*
  rename R0000100 CASEID_1979 
  rename R0000300 Q1_3_A_M_1979   // Q1-3_A~M
  rename R0000500 Q1_3_A_Y_1979   // Q1-3_A~Y
  rename R0000600 FAM_1B_1979   // FAM-1B
  rename R0173600 SAMPLE_ID_1979 
  rename R0214700 SAMPLE_RACE_78SCRN 
  rename R0214800 SAMPLE_SEX_1979 

*/
  /* *end* */  
/* To convert variable names to lower case use the TOLOWER command 
 *      (type findit tolower and follow the links to install).
 * TOLOWER VARLIST will change listed variables to lower case; 
 *  TOLOWER without a specified variable list will convert all variables in the dataset to lower case
 */
/* tolower */
