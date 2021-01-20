file handle pcdat/name='housing.dat' /lrecl=104.
data list file pcdat free /
  R0000100 (F5)
  R0173600 (F2)
  R0188000 (F2)
  R0214700 (F2)
  R0214800 (F2)
  R0402800 (F2)
  R0612100 (F2)
  R0828400 (F2)
  R1075700 (F2)
  R1451400 (F2)
  R1798600 (F2)
  R2160200 (F2)
  R2369100 (F2)
  R2500000 (F2)
  R2900000 (F2)
  R3100000 (F2)
  R3500000 (F2)
  R3700000 (F2)
  R4100300 (F2)
  R4500300 (F2)
  R5200300 (F2)
  R5800200 (F2)
  R6530300 (F2)
  R7090700 (F2)
  R7800600 (F2)
  T0001000 (F2)
  T1200800 (F2)
  T2260700 (F2)
  T3195700 (F2)
  T4181500 (F2)
  T5152100 (F2)
  T7721700 (F2)
  T7721800 (F2)
.
* The following code works with current versions of SPSS.
missing values all (-5 thru -1).
* older versions of SPSS may require this:
* recode all (-5,-3,-2,-1=-4).
* missing values all (-4).
variable labels
  R0000100  "ID# (1-12686) 79"
  R0173600  "SAMPLE ID  79 INT"
  R0188000  "TYPE OF RESIDENCE R IS LIVING 79"
  R0214700  "RACL/ETHNIC COHORT /SCRNR 79"
  R0214800  "SEX OF R 79"
  R0402800  "TYPE OF RESIDENCE R IS LIVING 80"
  R0612100  "TYPE OF RESIDENCE R IS LIVING 81"
  R0828400  "TYPE OF RESIDENCE R IS LIVING 82"
  R1075700  "TYPE OF RESIDENCE R IS LIVING 83"
  R1451400  "TYPE OF RESIDENCE R IS LIVING 84"
  R1798600  "TYPE OF RESIDENCE R IS LIVING 85"
  R2160200  "TYPE OF RESIDENCE R IS LIVING 86"
  R2369100  "TYPE OF RESIDENCE R IS LIVING 87"
  R2500000  "TYPE OF RESIDENCE R IS LIVING 88"
  R2900000  "TYPE OF RESIDENCE R IS LIVING 89"
  R3100000  "TYPE OF RESIDENCE R IS LIVING 90"
  R3500000  "TYPE OF RESIDENCE R IS LIVING 91"
  R3700000  "TYPE OF RESIDENCE R IS LIVING 92"
  R4100300  "TYPE OF RESIDENCE R IS LIVING IN 93"
  R4500300  "TYPE OF RESIDENCE R IS LIVING IN 94"
  R5200300  "TYPE OF RESIDENCE R IS LIVING IN 96"
  R5800200  "TYPE OF RESIDENCE R IS LIVING IN 1998"
  R6530300  "TYPE OF RESIDENCE R IS LIVING IN 2000"
  R7090700  "TYPE OF RESIDENCE R IS LIVING IN 2002"
  R7800600  "TYPE OF RESIDENCE R IS LIVING IN 2004"
  T0001000  "TYPE OF RESIDENCE R IS LIVING IN 2006"
  T1200800  "TYPE OF RESIDENCE R IS LIVING IN 2008"
  T2260700  "TYPE OF RESIDENCE R IS LIVING IN 2010"
  T3195700  "TYPE OF RESIDENCE R IS LIVING IN 2012"
  T4181500  "TYPE OF RESIDENCE R IS LIVING IN 2014"
  T5152100  "TYPE OF RESIDENCE R IS LIVING IN 2016"
  T7721700  "TYPE OF RESIDENCE R IS LIVING IN 2018"
  T7721800  "TYPE OF RESIDENCE R IS LIVING IN 2018"
.

* Recode continuous values. 
* recode 
.

* value labels
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
 R0188000
    1 "DORM, FRATERNITY, SORORITY"
    2 "HOSPITAL"
    3 "JAIL OR JUVENILE DETENTION CENTER"
    4 "OTHER GROUP QUARTERS"
    11 "OWN DWELLING UNIT"
    12 "ORPHANAGE"
    13 "RELIGIOUS INSTITUTION"
    14 "OTHER INDIVIDUAL QUARTERS"
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
 R0402800
    1 "ABOARD SHIP, BARRACKS"
    2 "BACHELOR, OFFICER QUARTERS"
    3 "DORM, FRATERNITY, SORORITY"
    4 "HOSPITAL"
    5 "JAIL"
    6 "OTHER TEMPORARY QUARTERS"
    11 "OWN DWELLING UNIT"
    12 "ON-BASE MIL FAM HOUSING"
    13 "OFF-BASE MIL FAM HOUSING"
    14 "ORPHANAGE"
    15 "RELIGIOUS INSTITUTION"
    16 "OTHER INDIVIDUAL QUARTERS"
    17 "PARENTAL"
    18 "HHI CONDUCTED WITH PARENT"
    19 "R IN PARENTAL HOUSEHOLD"
    /
 R0612100
    1 "ABOARD SHIP, BARRACKS"
    2 "BACHELOR, OFFICER QUARTERS"
    3 "DORM, FRATERNITY, SORORITY"
    4 "HOSPITAL"
    5 "JAIL"
    6 "OTHER TEMPORARY QUARTERS"
    11 "OWN DWELLING UNIT"
    12 "ON-BASE MIL FAM HOUSING"
    13 "OFF-BASE MIL FAM HOUSING"
    14 "ORPHANAGE"
    15 "RELIGIOUS INSTITUTION"
    16 "OTHER INDIVIDUAL QUARTERS"
    17 "PARENTAL"
    18 "HHI CONDUCTED WITH PARENT"
    19 "R IN PARENTAL HOUSEHOLD"
    /
 R0828400
    1 "ABOARD SHIP, BARRACKS"
    2 "BACHELOR, OFFICER QUARTERS"
    3 "DORM, FRATERNITY, SORORITY"
    4 "HOSPITAL"
    5 "JAIL"
    6 "OTHER TEMPORARY QUARTERS"
    11 "OWN DWELLING UNIT"
    12 "ON-BASE MIL FAM HOUSING"
    13 "OFF-BASE MIL FAM HOUSING"
    14 "ORPHANAGE"
    15 "RELIGIOUS INSTITUTION"
    16 "OTHER INDIVIDUAL QUARTERS"
    17 "PARENTAL"
    18 "HHI CONDUCTED WITH PARENT"
    19 "R IN PARENTAL HOUSEHOLD"
    /
 R1075700
    1 "ABOARD SHIP, BARRACKS"
    2 "BACHELOR, OFFICER QUARTERS"
    3 "DORM, FRATERNITY, SORORITY"
    4 "HOSPITAL"
    5 "JAIL"
    6 "OTHER TEMPORARY QUARTERS"
    11 "OWN DWELLING UNIT"
    12 "ON-BASE MIL FAM HOUSING"
    13 "OFF-BASE MIL FAM HOUSING"
    14 "ORPHANAGE"
    15 "RELIGIOUS INSTITUTION"
    16 "OTHER INDIVIDUAL QUARTERS"
    17 "PARENTAL"
    18 "HHI CONDUCTED WITH PARENT"
    19 "R IN PARENTAL HOUSEHOLD"
    /
 R1451400
    1 "ABOARD SHIP, BARRACKS"
    2 "BACHELOR, OFFICER QUARTERS"
    3 "DORM, FRATERNITY, SORORITY"
    4 "HOSPITAL"
    5 "JAIL"
    6 "OTHER TEMPORARY QUARTERS"
    11 "OWN DWELLING UNIT"
    12 "ON-BASE MIL FAM HOUSING"
    13 "OFF-BASE MIL FAM HOUSING"
    14 "ORPHANAGE"
    15 "RELIGIOUS INSTITUTION"
    16 "OTHER INDIVIDUAL QUARTERS"
    17 "PARENTAL"
    18 "HHI CONDUCTED WITH PARENT"
    19 "R IN PARENTAL HOUSEHOLD"
    /
 R1798600
    1 "ABOARD SHIP, BARRACKS"
    2 "BACHELOR, OFFICER QUARTERS"
    3 "DORM, FRATERNITY, SORORITY"
    4 "HOSPITAL"
    5 "JAIL"
    6 "OTHER TEMPORARY QUARTERS"
    11 "OWN DWELLING UNIT"
    12 "ON-BASE MIL FAM HOUSING"
    13 "OFF-BASE MIL FAM HOUSING"
    14 "ORPHANAGE"
    15 "RELIGIOUS INSTITUTION"
    16 "OTHER INDIVIDUAL QUARTERS"
    17 "PARENTAL"
    18 "HHI CONDUCTED WITH PARENT"
    19 "R IN PARENTAL HOUSEHOLD"
    /
 R2160200
    1 "ABOARD SHIP, BARRACKS"
    2 "BACHELOR, OFFICER QUARTERS"
    3 "DORM, FRATERNITY, SORORITY"
    4 "HOSPITAL"
    5 "JAIL"
    6 "OTHER TEMPORARY QUARTERS"
    11 "OWN DWELLING UNIT"
    12 "ON-BASE MIL FAM HOUSING"
    13 "OFF-BASE MIL FAM HOUSING"
    14 "ORPHANAGE"
    15 "RELIGIOUS INSTITUTION"
    16 "OTHER INDIVIDUAL QUARTERS"
    17 "PARENTAL"
    18 "HHI CONDUCTED WITH PARENT"
    19 "R IN PARENTAL HOUSEHOLD"
    /
 R2369100
    1 "ABOARD SHIP, BARRACKS"
    2 "BACHELOR, OFFICER QUARTERS"
    3 "DORM, FRATERNITY, SORORITY"
    4 "HOSPITAL"
    5 "JAIL"
    6 "OTHER TEMPORARY QUARTERS"
    11 "OWN DWELLING UNIT"
    12 "ON-BASE MIL FAM HOUSING"
    13 "OFF-BASE MIL FAM HOUSING"
    14 "ORPHANAGE"
    15 "RELIGIOUS INSTITUTION"
    16 "OTHER INDIVIDUAL QUARTERS"
    17 "PARENTAL"
    18 "HHI CONDUCTED WITH PARENT"
    19 "R IN PARENTAL HOUSEHOLD"
    /
 R2500000
    1 "ABOARD SHIP, BARRACKS"
    2 "BACHELOR, OFFICER QUARTERS"
    3 "DORM, FRATERNITY, SORORITY"
    4 "HOSPITAL"
    5 "JAIL"
    6 "OTHER TEMPORARY QUARTERS"
    11 "OWN DWELLING UNIT"
    12 "ON-BASE MIL FAM HOUSING"
    13 "OFF-BASE MIL FAM HOUSING"
    14 "ORPHANAGE"
    15 "RELIGIOUS INSTITUTION"
    16 "OTHER INDIVIDUAL QUARTERS"
    17 "PARENTAL"
    18 "HHI CONDUCTED WITH PARENT"
    19 "R IN PARENTAL HOUSEHOLD"
    /
 R2900000
    1 "ABOARD SHIP, BARRACKS"
    2 "BACHELOR, OFFICER QUARTERS"
    3 "DORM, FRATERNITY, SORORITY"
    4 "HOSPITAL"
    5 "JAIL"
    6 "OTHER TEMPORARY QUARTERS"
    11 "OWN DWELLING UNIT"
    12 "ON-BASE MIL FAM HOUSING"
    13 "OFF-BASE MIL FAM HOUSING"
    14 "ORPHANAGE"
    15 "RELIGIOUS INSTITUTION"
    16 "OTHER INDIVIDUAL QUARTERS"
    17 "PARENTAL"
    18 "HHI CONDUCTED WITH PARENT"
    19 "R IN PARENTAL HOUSEHOLD"
    /
 R3100000
    1 "ABOARD SHIP, BARRACKS"
    2 "BACHELOR, OFFICER QUARTERS"
    3 "DORM, FRATERNITY, SORORITY"
    4 "HOSPITAL"
    5 "JAIL"
    6 "OTHER TEMPORARY QUARTERS"
    11 "OWN DWELLING UNIT"
    12 "ON-BASE MIL FAM HOUSING"
    13 "OFF-BASE MIL FAM HOUSING"
    14 "ORPHANAGE"
    15 "RELIGIOUS INSTITUTION"
    16 "OTHER INDIVIDUAL QUARTERS"
    17 "PARENTAL"
    18 "HHI CONDUCTED WITH PARENT"
    19 "R IN PARENTAL HOUSEHOLD"
    /
 R3500000
    1 "ABOARD SHIP, BARRACKS"
    2 "BACHELOR, OFFICER QUARTERS"
    3 "DORM, FRATERNITY, SORORITY"
    4 "HOSPITAL"
    5 "JAIL"
    6 "OTHER TEMPORARY QUARTERS"
    11 "OWN DWELLING UNIT"
    12 "ON-BASE MIL FAM HOUSING"
    13 "OFF-BASE MIL FAM HOUSING"
    14 "ORPHANAGE"
    15 "RELIGIOUS INSTITUTION"
    16 "OTHER INDIVIDUAL QUARTERS"
    17 "PARENTAL"
    18 "HHI CONDUCTED WITH PARENT"
    19 "R IN PARENTAL HOUSEHOLD"
    /
 R3700000
    1 "ABOARD SHIP, BARRACKS"
    2 "BACHELOR, OFFICER QUARTERS"
    3 "DORM, FRATERNITY, SORORITY"
    4 "HOSPITAL"
    5 "JAIL"
    6 "OTHER TEMPORARY QUARTERS"
    11 "OWN DWELLING UNIT"
    12 "ON-BASE MIL FAM HOUSING"
    13 "OFF-BASE MIL FAM HOUSING"
    14 "ORPHANAGE"
    15 "RELIGIOUS INSTITUTION"
    16 "OTHER INDIVIDUAL QUARTERS"
    17 "PARENTAL"
    18 "HHI CONDUCTED WITH PARENT"
    19 "R IN PARENTAL HOUSEHOLD"
    /
 R4100300
    1 "ABOARD SHIP, BARRACKS"
    2 "BACHELOR, OFFICER QUARTERS"
    3 "DORM, FRATERNITY, SORORITY"
    4 "HOSPITAL"
    5 "JAIL"
    6 "OTHER TEMPORARY QUARTERS"
    11 "OWN DWELLING UNIT"
    12 "ON-BASE MIL FAM HOUSING"
    13 "OFF-BASE MIL FAM HOUSING"
    14 "ORPHANAGE"
    15 "RELIGIOUS INSTITUTION"
    16 "OTHER INDIVIDUAL QUARTERS"
    17 "PARENTAL"
    18 "HHI CONDUCTED WITH PARENT"
    19 "R IN PARENTAL HOUSEHOLD"
    /
 R4500300
    1 "OPEN BAY OR TROOP BARRACKS, ABOARD SHIP"
    2 "BACHELOR ENLISTED OR OFFICER QUARTERS"
    3 "DORMITORY, FRATERNITY OR SORORITY"
    4 "HOSPITAL"
    5 "JAIL"
    6 "OTHER TEMPORARY INDIVIDUAL QUARTERS (SPECIFY)"
    11 "OWN DWELLING UNIT"
    12 "ON-BASE MILITARY FAMILY HOUSING"
    13 "OFF-BASE MILITARY FAMILY HOUSING"
    15 "CONVENT, MONASTERY, OTHER RELIGIOUS INSTITUTE"
    16 "OTHER INDIVIDUAL QUARTERS (SPECIFY)"
    19 "RESPONDENT IN PARENT HOUSEHOLD"
    /
 R5200300
    1 "OPEN BAY OR TROOP BARRACKS, ABOARD SHIP"
    2 "BACHELOR ENLISTED OR OFFICER QUARTERS"
    3 "DORMITORY, FRATERNITY OR SORORITY"
    4 "HOSPITAL"
    5 "JAIL"
    6 "OTHER TEMPORARY INDIVIDUAL QUARTERS (SPECIFY)"
    11 "OWN DWELLING UNIT"
    12 "ON-BASE MILITARY FAMILY HOUSING"
    13 "OFF-BASE MILITARY FAMILY HOUSING"
    15 "CONVENT, MONASTERY, OTHER RELIGIOUS INSTITUTE"
    16 "OTHER INDIVIDUAL QUARTERS (SPECIFY)"
    19 "RESPONDENT IN PARENT HOUSEHOLD"
    /
 R5800200
    1 "OPEN BAY OR TROOP BARRACKS, ABOARD SHIP"
    2 "BACHELOR ENLISTED OR OFFICER QUARTERS"
    3 "DORMITORY, FRATERNITY OR SORORITY"
    4 "HOSPITAL"
    5 "JAIL"
    6 "OTHER TEMPORARY INDIVIDUAL QUARTERS (SPECIFY)"
    11 "OWN DWELLING UNIT"
    12 "ON-BASE MILITARY FAMILY HOUSING"
    13 "OFF-BASE MILITARY FAMILY HOUSING"
    15 "CONVENT, MONASTERY, OTHER RELIGIOUS INSTITUTE"
    16 "OTHER INDIVIDUAL QUARTERS (SPECIFY)"
    19 "RESPONDENT IN PARENT HOUSEHOLD"
    /
 R6530300
    1 "OPEN BAY OR TROOP BARRACKS, ABOARD SHIP"
    2 "BACHELOR ENLISTED OR OFFICER QUARTERS"
    3 "DORMITORY, FRATERNITY OR SORORITY"
    4 "HOSPITAL"
    5 "JAIL"
    6 "OTHER TEMPORARY INDIVIDUAL QUARTERS (SPECIFY)"
    11 "OWN DWELLING UNIT"
    12 "ON-BASE MILITARY FAMILY HOUSING"
    13 "OFF-BASE MILITARY FAMILY HOUSING"
    15 "CONVENT, MONASTERY, OTHER RELIGIOUS INSTITUTE"
    16 "OTHER INDIVIDUAL QUARTERS (SPECIFY)"
    19 "RESPONDENT IN PARENT HOUSEHOLD"
    /
 R7090700
    1 "OPEN BAY OR TROOP BARRACKS, ABOARD SHIP"
    2 "BACHELOR ENLISTED OR OFFICER QUARTERS"
    3 "DORMITORY, FRATERNITY OR SORORITY"
    4 "HOSPITAL"
    5 "JAIL"
    6 "OTHER TEMPORARY INDIVIDUAL QUARTERS (SPECIFY)"
    11 "OWN DWELLING UNIT"
    12 "ON-BASE MILITARY FAMILY HOUSING"
    13 "OFF-BASE MILITARY FAMILY HOUSING"
    15 "CONVENT, MONASTERY, OTHER RELIGIOUS INSTITUTE"
    16 "OTHER INDIVIDUAL QUARTERS (SPECIFY)"
    19 "RESPONDENT IN PARENT HOUSEHOLD"
    /
 R7800600
    1 "OPEN BAY OR TROOP BARRACKS, ABOARD SHIP"
    2 "BACHELOR ENLISTED OR OFFICER QUARTERS"
    3 "DORMITORY, FRATERNITY OR SORORITY"
    4 "HOSPITAL"
    5 "JAIL"
    6 "OTHER TEMPORARY INDIVIDUAL QUARTERS (SPECIFY)"
    11 "OWN DWELLING UNIT"
    12 "ON-BASE MILITARY FAMILY HOUSING"
    13 "OFF-BASE MILITARY FAMILY HOUSING"
    15 "CONVENT, MONASTERY, OTHER RELIGIOUS INSTITUTE"
    16 "OTHER INDIVIDUAL QUARTERS (SPECIFY)"
    19 "RESPONDENT IN PARENT HOUSEHOLD"
    /
 T0001000
    1 "OPEN BAY OR TROOP BARRACKS, ABOARD SHIP"
    2 "BACHELOR ENLISTED OR OFFICER QUARTERS"
    3 "DORMITORY, FRATERNITY OR SORORITY"
    4 "HOSPITAL"
    5 "JAIL"
    6 "OTHER TEMPORARY INDIVIDUAL QUARTERS (SPECIFY)"
    11 "OWN DWELLING UNIT"
    12 "ON-BASE MILITARY FAMILY HOUSING"
    13 "OFF-BASE MILITARY FAMILY HOUSING"
    15 "CONVENT, MONASTERY, OTHER RELIGIOUS INSTITUTE"
    16 "OTHER INDIVIDUAL QUARTERS (SPECIFY)"
    19 "RESPONDENT IN PARENT HOUSEHOLD"
    /
 T1200800
    1 "OPEN BAY OR TROOP BARRACKS, ABOARD SHIP"
    2 "BACHELOR ENLISTED OR OFFICER QUARTERS"
    3 "DORMITORY, FRATERNITY OR SORORITY"
    4 "HOSPITAL"
    5 "JAIL"
    6 "OTHER TEMPORARY INDIVIDUAL QUARTERS (SPECIFY)"
    11 "OWN DWELLING UNIT"
    12 "ON-BASE MILITARY FAMILY HOUSING"
    13 "OFF-BASE MILITARY FAMILY HOUSING"
    15 "CONVENT, MONASTERY, OTHER RELIGIOUS INSTITUTE"
    16 "OTHER INDIVIDUAL QUARTERS (SPECIFY)"
    19 "RESPONDENT IN PARENT HOUSEHOLD"
    /
 T2260700
    1 "OPEN BAY OR TROOP BARRACKS, ABOARD SHIP"
    2 "BACHELOR ENLISTED OR OFFICER QUARTERS"
    3 "DORMITORY, FRATERNITY OR SORORITY"
    4 "HOSPITAL"
    5 "JAIL"
    6 "OTHER TEMPORARY INDIVIDUAL QUARTERS (SPECIFY)"
    11 "OWN DWELLING UNIT"
    12 "ON-BASE MILITARY FAMILY HOUSING"
    13 "OFF-BASE MILITARY FAMILY HOUSING"
    15 "CONVENT, MONASTERY, OTHER RELIGIOUS INSTITUTE"
    16 "OTHER INDIVIDUAL QUARTERS (SPECIFY)"
    19 "RESPONDENT IN PARENT HOUSEHOLD"
    /
 T3195700
    1 "OPEN BAY OR TROOP BARRACKS, ABOARD SHIP"
    2 "BACHELOR ENLISTED OR OFFICER QUARTERS"
    3 "DORMITORY, FRATERNITY OR SORORITY"
    4 "HOSPITAL"
    5 "JAIL"
    6 "OTHER TEMPORARY INDIVIDUAL QUARTERS (SPECIFY)"
    11 "OWN DWELLING UNIT"
    12 "ON-BASE MILITARY FAMILY HOUSING"
    13 "OFF-BASE MILITARY FAMILY HOUSING"
    15 "CONVENT, MONASTERY, OTHER RELIGIOUS INSTITUTE"
    16 "OTHER INDIVIDUAL QUARTERS (SPECIFY)"
    19 "RESPONDENT IN PARENT HOUSEHOLD"
    /
 T4181500
    1 "OPEN BAY OR TROOP BARRACKS, ABOARD SHIP"
    2 "BACHELOR ENLISTED OR OFFICER QUARTERS"
    3 "DORMITORY, FRATERNITY OR SORORITY"
    4 "HOSPITAL"
    5 "JAIL"
    6 "OTHER TEMPORARY INDIVIDUAL QUARTERS (SPECIFY)"
    11 "OWN DWELLING UNIT"
    12 "ON-BASE MILITARY FAMILY HOUSING"
    13 "OFF-BASE MILITARY FAMILY HOUSING"
    15 "CONVENT, MONASTERY, OTHER RELIGIOUS INSTITUTE"
    16 "OTHER INDIVIDUAL QUARTERS (SPECIFY)"
    17 "LIVES WITH OTHER RELATIVES"
    18 "LIVES AT FRIEND'S RESIDENCE"
    19 "RESPONDENT IN PARENT HOUSEHOLD"
    21 "HOMELESS"
    25 "MOTEL/HOTEL"
    26 "GROUP HOME OR BOARDING HOUSE"
    32 "NURSING HOME OR RETIREMENT FACILITY"
    /
 T5152100
    4 "HOSPITAL"
    5 "JAIL/PRISON"
    11 "OWN RESIDENCE SUCH AS HOUSE, APARTMENT, CONDO, OR MOBILE HOME, ALONE OR WITH OTHERS"
    19 "RESPONDENT IN PARENT HOUSEHOLD"
    20 "RESPONDENT IN OTHER RELATIVE'S HOUSEHOLD"
    21 "RETIREMENT COMMUNITY/FACILITY"
    22 "GROUP HOME, RESIDENTIAL NURSING OR OTHER ASSISTED LIVING FACILITY"
    23 "HALFWAY HOUSE, RESIDENTIAL MENTAL HEALTH TREATMENT OR DRUG/ALCOHOL REHAB"
    24 "HOTEL, MOTEL, ROOMING, OR BOARDING HOUSE"
    25 "SHELTER (FOR HOMELESS OR ABUSED) OR ON STREET"
    26 "OTHER (SPECIFY)"
    /
 T7721700
    1 "SINGLE-FAMILY HOUSE (INCL. MOBILE HOME)"
    2 "APARTMENT/CONDO/TOWNHOUSE"
    3 "SOME OTHER TYPE OF HOUSING"
    /
 T7721800
    4 "Dormitory (inc. fraternity/sorority) or Military Barracks"
    5 "Hotel, Motel, Rooming or Boarding House"
    6 "Shelter (for homeless or abused) or on street"
    7 "Jail/Prison/Detention/Work Release"
    8 "(IF OFFERED) Mobile Home"
    9 "Hospital"
    10 "Group Home or Treatment Center"
    11 "Other Type of Housing"
    /
.
/* Crosswalk for Reference number & Question name
 * Uncomment and edit this RENAME VARIABLES statement to rename variables for ease of use.
 * This command does not guarantee uniqueness
 */  /* *start* */

* RENAME VARIABLES
  (R0000100 = CASEID_1979) 
  (R0173600 = SAMPLE_ID_1979) 
  (R0188000 = HH1_1_1979)   /* HH1-1 */
  (R0214700 = SAMPLE_RACE_78SCRN) 
  (R0214800 = SAMPLE_SEX_1979) 
  (R0402800 = HH1_1_1980)   /* HH1-1 */
  (R0612100 = HH1_1_1981)   /* HH1-1 */
  (R0828400 = HH1_1_1982)   /* HH1-1 */
  (R1075700 = HH1_1_1983)   /* HH1-1 */
  (R1451400 = HH1_1_1984)   /* HH1-1 */
  (R1798600 = HH1_1_1985)   /* HH1-1 */
  (R2160200 = HH1_1_1986)   /* HH1-1 */
  (R2369100 = HH1_1_1987)   /* HH1-1 */
  (R2500000 = HH1_1_1988)   /* HH1-1 */
  (R2900000 = HH1_1_1989)   /* HH1-1 */
  (R3100000 = HH1_1_1990)   /* HH1-1 */
  (R3500000 = HH1_1_1991)   /* HH1-1 */
  (R3700000 = HH1_1_1992)   /* HH1-1 */
  (R4100300 = HH1_1_1993)   /* HH1-1 */
  (R4500300 = HH1_1_1994)   /* HH1-1 */
  (R5200300 = HH1_1_1996)   /* HH1-1 */
  (R5800200 = HH1_1_1998)   /* HH1-1 */
  (R6530300 = HH1_1_2000)   /* HH1-1 */
  (R7090700 = HH1_1_2002)   /* HH1-1 */
  (R7800600 = HH1_1_2004)   /* HH1-1 */
  (T0001000 = HH1_1_2006)   /* HH1-1 */
  (T1200800 = HH1_1_2008)   /* HH1-1 */
  (T2260700 = HH1_1_2010)   /* HH1-1 */
  (T3195700 = HH1_1_2012)   /* HH1-1 */
  (T4181500 = HH1_1_2014)   /* HH1-1 */
  (T5152100 = HH1_1_2016)   /* HH1-1 */
  (T7721700 = HHI1_1_2018)   /* HHI1-1 */
  (T7721800 = HHI1_1X_2018)   /* HHI1-1X */
.
  /* *end* */

descriptives all.

*--- Tabulations using reference number variables.
*freq var=R0000100, 
  R0173600, 
  R0188000, 
  R0214700, 
  R0214800, 
  R0402800, 
  R0612100, 
  R0828400, 
  R1075700, 
  R1451400, 
  R1798600, 
  R2160200, 
  R2369100, 
  R2500000, 
  R2900000, 
  R3100000, 
  R3500000, 
  R3700000, 
  R4100300, 
  R4500300, 
  R5200300, 
  R5800200, 
  R6530300, 
  R7090700, 
  R7800600, 
  T0001000, 
  T1200800, 
  T2260700, 
  T3195700, 
  T4181500, 
  T5152100, 
  T7721700, 
  T7721800.

*--- Tabulations using qname variables.
*freq var=CASEID_1979, 
  SAMPLE_ID_1979, 
  HH1_1_1979, 
  SAMPLE_RACE_78SCRN, 
  SAMPLE_SEX_1979, 
  HH1_1_1980, 
  HH1_1_1981, 
  HH1_1_1982, 
  HH1_1_1983, 
  HH1_1_1984, 
  HH1_1_1985, 
  HH1_1_1986, 
  HH1_1_1987, 
  HH1_1_1988, 
  HH1_1_1989, 
  HH1_1_1990, 
  HH1_1_1991, 
  HH1_1_1992, 
  HH1_1_1993, 
  HH1_1_1994, 
  HH1_1_1996, 
  HH1_1_1998, 
  HH1_1_2000, 
  HH1_1_2002, 
  HH1_1_2004, 
  HH1_1_2006, 
  HH1_1_2008, 
  HH1_1_2010, 
  HH1_1_2012, 
  HH1_1_2014, 
  HH1_1_2016, 
  HHI1_1_2018, 
  HHI1_1X_2018.
