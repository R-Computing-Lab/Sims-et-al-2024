file handle pcdat/name='default.dat' /lrecl=26.
data list file pcdat free /
  R0000100 (F5)
  R0000300 (F2)
  R0000500 (F2)
  R0000600 (F2)
  R0173600 (F2)
  R0214700 (F2)
  R0214800 (F2)
.
* The following code works with current versions of SPSS.
missing values all (-5 thru -1).
* older versions of SPSS may require this:
* recode all (-5,-3,-2,-1=-4).
* missing values all (-4).
variable labels
  R0000100  "ID# (1-12686) 79"
  R0000300  "DATE OF BIRTH - MONTH 79"
  R0000500  "DATE OF BIRTH - YR 79"
  R0000600  "AGE OF R 79"
  R0173600  "SAMPLE ID  79 INT"
  R0214700  "RACL/ETHNIC COHORT /SCRNR 79"
  R0214800  "SEX OF R 79"
.

* Recode continuous values. 
* recode 
 R0000300 
    (0 thru 0 eq 0)
    (1 thru 1 eq 1)
    (2 thru 2 eq 2)
    (3 thru 3 eq 3)
    (4 thru 4 eq 4)
    (5 thru 5 eq 5)
    (6 thru 6 eq 6)
    (7 thru 7 eq 7)
    (8 thru 8 eq 8)
    (9 thru 9 eq 9)
    (10 thru 10 eq 10)
    (11 thru 11 eq 11)
    (12 thru 12 eq 12)
    (13 thru 13 eq 13)
    (14 thru 14 eq 14)
    (15 thru 15 eq 15)
    (16 thru 16 eq 16)
    (17 thru 99999 eq 17)
    / 
 R0000500 
    (0 thru 56 eq 0)
    (57 thru 57 eq 57)
    (58 thru 58 eq 58)
    (59 thru 59 eq 59)
    (60 thru 60 eq 60)
    (61 thru 61 eq 61)
    (62 thru 62 eq 62)
    (63 thru 63 eq 63)
    (64 thru 64 eq 64)
    (65 thru 65 eq 65)
    (66 thru 66 eq 66)
    (67 thru 67 eq 67)
    (68 thru 68 eq 68)
    (69 thru 69 eq 69)
    (70 thru 70 eq 70)
    (71 thru 71 eq 71)
    (72 thru 72 eq 72)
    (73 thru 99999 eq 73)
    / 
 R0000600 
    (0 thru 13 eq 0)
    (14 thru 14 eq 14)
    (15 thru 15 eq 15)
    (16 thru 16 eq 16)
    (17 thru 17 eq 17)
    (18 thru 18 eq 18)
    (19 thru 19 eq 19)
    (20 thru 20 eq 20)
    (21 thru 21 eq 21)
    (22 thru 22 eq 22)
    (23 thru 23 eq 23)
    (24 thru 24 eq 24)
    (25 thru 25 eq 25)
    (26 thru 26 eq 26)
    (27 thru 27 eq 27)
    (28 thru 28 eq 28)
    (29 thru 29 eq 29)
    (30 thru 99999 eq 30)
.

* value labels
 R0000300
    0 "0: < 1"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10"
    11 "11"
    12 "12"
    13 "13"
    14 "14"
    15 "15"
    16 "16"
    17 "17 TO 99999: 17+"
    /
 R0000500
    0 "0 TO 56: < 57"
    57 "57"
    58 "58"
    59 "59"
    60 "60"
    61 "61"
    62 "62"
    63 "63"
    64 "64"
    65 "65"
    66 "66"
    67 "67"
    68 "68"
    69 "69"
    70 "70"
    71 "71"
    72 "72"
    73 "73 TO 99999: 73+"
    /
 R0000600
    0 "0 TO 13: < 14"
    14 "14"
    15 "15"
    16 "16"
    17 "17"
    18 "18"
    19 "19"
    20 "20"
    21 "21"
    22 "22"
    23 "23"
    24 "24"
    25 "25"
    26 "26"
    27 "27"
    28 "28"
    29 "29"
    30 "30 TO 99999: 30+"
    /
 R0173600
    1 "CROSS MALE WHITE"
    2 "CROSS MALE WH. POOR"
    3 "CROSS MALE BLACK"
    4 "CROSS MALE HISPANIC"
    5 "CROSS FEMALE WHITE"
    6 "CROSS FEMALE WH POOR"
    7 "CROSS FEMALE BLACK"
    8 "CROSS FEMALE HISPANIC"
    9 "SUP MALE WH POOR"
    10 "SUP MALE BLACK"
    11 "SUP MALE HISPANIC"
    12 "SUP FEM WH POOR"
    13 "SUP FEMALE BLACK"
    14 "SUP FEMALE HISPANIC"
    15 "MIL MALE WHITE"
    16 "MIL MALE BLACK"
    17 "MIL MALE HISPANIC"
    18 "MIL FEMALE WHITE"
    19 "MIL FEMALE BLACK"
    20 "MIL FEMALE HISPANIC"
    /
 R0214700
    1 "HISPANIC"
    2 "BLACK"
    3 "NON-BLACK, NON-HISPANIC"
    /
 R0214800
    1 "MALE"
    2 "FEMALE"
    /
.
/* Crosswalk for Reference number & Question name
 * Uncomment and edit this RENAME VARIABLES statement to rename variables for ease of use.
 * This command does not guarantee uniqueness
 */  /* *start* */

* RENAME VARIABLES
  (R0000100 = CASEID_1979) 
  (R0000300 = Q1_3_A_M_1979)   /* Q1-3_A~M */
  (R0000500 = Q1_3_A_Y_1979)   /* Q1-3_A~Y */
  (R0000600 = FAM_1B_1979)   /* FAM-1B */
  (R0173600 = SAMPLE_ID_1979) 
  (R0214700 = SAMPLE_RACE_78SCRN) 
  (R0214800 = SAMPLE_SEX_1979) 
.
  /* *end* */

descriptives all.

*--- Tabulations using reference number variables.
*freq var=R0000100, 
  R0000300, 
  R0000500, 
  R0000600, 
  R0173600, 
  R0214700, 
  R0214800.

*--- Tabulations using qname variables.
*freq var=CASEID_1979, 
  Q1_3_A_M_1979, 
  Q1_3_A_Y_1979, 
  FAM_1B_1979, 
  SAMPLE_ID_1979, 
  SAMPLE_RACE_78SCRN, 
  SAMPLE_SEX_1979.
