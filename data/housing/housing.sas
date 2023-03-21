options nocenter validvarname=any;

*---Read in space-delimited ascii file;

data new_data;


infile 'housing.dat' lrecl=104 missover DSD DLM=' ' print;
input
  R0000100
  R0173600
  R0188000
  R0214700
  R0214800
  R0402800
  R0612100
  R0828400
  R1075700
  R1451400
  R1798600
  R2160200
  R2369100
  R2500000
  R2900000
  R3100000
  R3500000
  R3700000
  R4100300
  R4500300
  R5200300
  R5800200
  R6530300
  R7090700
  R7800600
  T0001000
  T1200800
  T2260700
  T3195700
  T4181500
  T5152100
  T7721700
  T7721800
;
array nvarlist _numeric_;


*---Recode missing values to SAS custom system missing. See SAS
      documentation for use of MISSING option in procedures, e.g. PROC FREQ;

do over nvarlist;
  if nvarlist = -1 then nvarlist = .R;  /* Refused */
  if nvarlist = -2 then nvarlist = .D;  /* Dont know */
  if nvarlist = -3 then nvarlist = .I;  /* Invalid missing */
  if nvarlist = -4 then nvarlist = .V;  /* Valid missing */
  if nvarlist = -5 then nvarlist = .N;  /* Non-interview */
end;

  label R0000100 = "ID# (1-12686) 79";
  label R0173600 = "SAMPLE ID  79 INT";
  label R0188000 = "TYPE OF RESIDENCE R IS LIVING 79";
  label R0214700 = "RACL/ETHNIC COHORT /SCRNR 79";
  label R0214800 = "SEX OF R 79";
  label R0402800 = "TYPE OF RESIDENCE R IS LIVING 80";
  label R0612100 = "TYPE OF RESIDENCE R IS LIVING 81";
  label R0828400 = "TYPE OF RESIDENCE R IS LIVING 82";
  label R1075700 = "TYPE OF RESIDENCE R IS LIVING 83";
  label R1451400 = "TYPE OF RESIDENCE R IS LIVING 84";
  label R1798600 = "TYPE OF RESIDENCE R IS LIVING 85";
  label R2160200 = "TYPE OF RESIDENCE R IS LIVING 86";
  label R2369100 = "TYPE OF RESIDENCE R IS LIVING 87";
  label R2500000 = "TYPE OF RESIDENCE R IS LIVING 88";
  label R2900000 = "TYPE OF RESIDENCE R IS LIVING 89";
  label R3100000 = "TYPE OF RESIDENCE R IS LIVING 90";
  label R3500000 = "TYPE OF RESIDENCE R IS LIVING 91";
  label R3700000 = "TYPE OF RESIDENCE R IS LIVING 92";
  label R4100300 = "TYPE OF RESIDENCE R IS LIVING IN 93";
  label R4500300 = "TYPE OF RESIDENCE R IS LIVING IN 94";
  label R5200300 = "TYPE OF RESIDENCE R IS LIVING IN 96";
  label R5800200 = "TYPE OF RESIDENCE R IS LIVING IN 1998";
  label R6530300 = "TYPE OF RESIDENCE R IS LIVING IN 2000";
  label R7090700 = "TYPE OF RESIDENCE R IS LIVING IN 2002";
  label R7800600 = "TYPE OF RESIDENCE R IS LIVING IN 2004";
  label T0001000 = "TYPE OF RESIDENCE R IS LIVING IN 2006";
  label T1200800 = "TYPE OF RESIDENCE R IS LIVING IN 2008";
  label T2260700 = "TYPE OF RESIDENCE R IS LIVING IN 2010";
  label T3195700 = "TYPE OF RESIDENCE R IS LIVING IN 2012";
  label T4181500 = "TYPE OF RESIDENCE R IS LIVING IN 2014";
  label T5152100 = "TYPE OF RESIDENCE R IS LIVING IN 2016";
  label T7721700 = "TYPE OF RESIDENCE R IS LIVING IN 2018";
  label T7721800 = "TYPE OF RESIDENCE R IS LIVING IN 2018";

/*---------------------------------------------------------------------*
 *  Crosswalk for Reference number & Question name                     *
 *---------------------------------------------------------------------*
 * Uncomment and edit this RENAME statement to rename variables
 * for ease of use.  You may need to use  name literal strings
 * e.g.  'variable-name'n   to create valid SAS variable names, or 
 * alter variables similarly named across years.
 * This command does not guarantee uniqueness

 * See SAS documentation for use of name literals and use of the
 * VALIDVARNAME=ANY option.     
 *---------------------------------------------------------------------*/
  /* *start* */

* RENAME
  R0000100 = 'CASEID_1979'n
  R0173600 = 'SAMPLE_ID_1979'n
  R0188000 = 'HH1-1_1979'n
  R0214700 = 'SAMPLE_RACE_78SCRN'n
  R0214800 = 'SAMPLE_SEX_1979'n
  R0402800 = 'HH1-1_1980'n
  R0612100 = 'HH1-1_1981'n
  R0828400 = 'HH1-1_1982'n
  R1075700 = 'HH1-1_1983'n
  R1451400 = 'HH1-1_1984'n
  R1798600 = 'HH1-1_1985'n
  R2160200 = 'HH1-1_1986'n
  R2369100 = 'HH1-1_1987'n
  R2500000 = 'HH1-1_1988'n
  R2900000 = 'HH1-1_1989'n
  R3100000 = 'HH1-1_1990'n
  R3500000 = 'HH1-1_1991'n
  R3700000 = 'HH1-1_1992'n
  R4100300 = 'HH1-1_1993'n
  R4500300 = 'HH1-1_1994'n
  R5200300 = 'HH1-1_1996'n
  R5800200 = 'HH1-1_1998'n
  R6530300 = 'HH1-1_2000'n
  R7090700 = 'HH1-1_2002'n
  R7800600 = 'HH1-1_2004'n
  T0001000 = 'HH1-1_2006'n
  T1200800 = 'HH1-1_2008'n
  T2260700 = 'HH1-1_2010'n
  T3195700 = 'HH1-1_2012'n
  T4181500 = 'HH1-1_2014'n
  T5152100 = 'HH1-1_2016'n
  T7721700 = 'HHI1-1_2018'n
  T7721800 = 'HHI1-1X_2018'n
;
  /* *finish* */

run;

proc means data=new_data n mean min max;
run;


/*---------------------------------------------------------------------*
 *  FORMATTED TABULATIONS                                              *
 *---------------------------------------------------------------------*
 * You can uncomment and edit the PROC FORMAT and PROC FREQ statements 
 * provided below to obtain formatted tabulations. The tabulations 
 * should reflect codebook values.
 * 
 * Please edit the formats below reflect any renaming of the variables
 * you may have done in the first data step. 
 *---------------------------------------------------------------------*/

/*
proc format; 
value vx1f
  1='CROSS MALE WHITE'
  2='CROSS MALE WH. POOR'
  3='CROSS MALE BLACK'
  4='CROSS MALE HISPANIC'
  5='CROSS FEMALE WHITE'
  6='CROSS FEMALE WH POOR'
  7='CROSS FEMALE BLACK'
  8='CROSS FEMALE HISPANIC'
  9='SUP MALE WH POOR'
  10='SUP MALE BLACK'
  11='SUP MALE HISPANIC'
  12='SUP FEM WH POOR'
  13='SUP FEMALE BLACK'
  14='SUP FEMALE HISPANIC'
  15='MIL MALE WHITE'
  16='MIL MALE BLACK'
  17='MIL MALE HISPANIC'
  18='MIL FEMALE WHITE'
  19='MIL FEMALE BLACK'
  20='MIL FEMALE HISPANIC'
;
value vx2f
  1='DORM, FRATERNITY, SORORITY'
  2='HOSPITAL'
  3='JAIL OR JUVENILE DETENTION CENTER'
  4='OTHER GROUP QUARTERS'
  11='OWN DWELLING UNIT'
  12='ORPHANAGE'
  13='RELIGIOUS INSTITUTION'
  14='OTHER INDIVIDUAL QUARTERS'
;
value vx3f
  1='HISPANIC'
  2='BLACK'
  3='NON-BLACK, NON-HISPANIC'
;
value vx4f
  1='MALE'
  2='FEMALE'
;
value vx5f
  1='ABOARD SHIP, BARRACKS'
  2='BACHELOR, OFFICER QUARTERS'
  3='DORM, FRATERNITY, SORORITY'
  4='HOSPITAL'
  5='JAIL'
  6='OTHER TEMPORARY QUARTERS'
  11='OWN DWELLING UNIT'
  12='ON-BASE MIL FAM HOUSING'
  13='OFF-BASE MIL FAM HOUSING'
  14='ORPHANAGE'
  15='RELIGIOUS INSTITUTION'
  16='OTHER INDIVIDUAL QUARTERS'
  17='PARENTAL'
  18='HHI CONDUCTED WITH PARENT'
  19='R IN PARENTAL HOUSEHOLD'
;
value vx6f
  1='ABOARD SHIP, BARRACKS'
  2='BACHELOR, OFFICER QUARTERS'
  3='DORM, FRATERNITY, SORORITY'
  4='HOSPITAL'
  5='JAIL'
  6='OTHER TEMPORARY QUARTERS'
  11='OWN DWELLING UNIT'
  12='ON-BASE MIL FAM HOUSING'
  13='OFF-BASE MIL FAM HOUSING'
  14='ORPHANAGE'
  15='RELIGIOUS INSTITUTION'
  16='OTHER INDIVIDUAL QUARTERS'
  17='PARENTAL'
  18='HHI CONDUCTED WITH PARENT'
  19='R IN PARENTAL HOUSEHOLD'
;
value vx7f
  1='ABOARD SHIP, BARRACKS'
  2='BACHELOR, OFFICER QUARTERS'
  3='DORM, FRATERNITY, SORORITY'
  4='HOSPITAL'
  5='JAIL'
  6='OTHER TEMPORARY QUARTERS'
  11='OWN DWELLING UNIT'
  12='ON-BASE MIL FAM HOUSING'
  13='OFF-BASE MIL FAM HOUSING'
  14='ORPHANAGE'
  15='RELIGIOUS INSTITUTION'
  16='OTHER INDIVIDUAL QUARTERS'
  17='PARENTAL'
  18='HHI CONDUCTED WITH PARENT'
  19='R IN PARENTAL HOUSEHOLD'
;
value vx8f
  1='ABOARD SHIP, BARRACKS'
  2='BACHELOR, OFFICER QUARTERS'
  3='DORM, FRATERNITY, SORORITY'
  4='HOSPITAL'
  5='JAIL'
  6='OTHER TEMPORARY QUARTERS'
  11='OWN DWELLING UNIT'
  12='ON-BASE MIL FAM HOUSING'
  13='OFF-BASE MIL FAM HOUSING'
  14='ORPHANAGE'
  15='RELIGIOUS INSTITUTION'
  16='OTHER INDIVIDUAL QUARTERS'
  17='PARENTAL'
  18='HHI CONDUCTED WITH PARENT'
  19='R IN PARENTAL HOUSEHOLD'
;
value vx9f
  1='ABOARD SHIP, BARRACKS'
  2='BACHELOR, OFFICER QUARTERS'
  3='DORM, FRATERNITY, SORORITY'
  4='HOSPITAL'
  5='JAIL'
  6='OTHER TEMPORARY QUARTERS'
  11='OWN DWELLING UNIT'
  12='ON-BASE MIL FAM HOUSING'
  13='OFF-BASE MIL FAM HOUSING'
  14='ORPHANAGE'
  15='RELIGIOUS INSTITUTION'
  16='OTHER INDIVIDUAL QUARTERS'
  17='PARENTAL'
  18='HHI CONDUCTED WITH PARENT'
  19='R IN PARENTAL HOUSEHOLD'
;
value vx10f
  1='ABOARD SHIP, BARRACKS'
  2='BACHELOR, OFFICER QUARTERS'
  3='DORM, FRATERNITY, SORORITY'
  4='HOSPITAL'
  5='JAIL'
  6='OTHER TEMPORARY QUARTERS'
  11='OWN DWELLING UNIT'
  12='ON-BASE MIL FAM HOUSING'
  13='OFF-BASE MIL FAM HOUSING'
  14='ORPHANAGE'
  15='RELIGIOUS INSTITUTION'
  16='OTHER INDIVIDUAL QUARTERS'
  17='PARENTAL'
  18='HHI CONDUCTED WITH PARENT'
  19='R IN PARENTAL HOUSEHOLD'
;
value vx11f
  1='ABOARD SHIP, BARRACKS'
  2='BACHELOR, OFFICER QUARTERS'
  3='DORM, FRATERNITY, SORORITY'
  4='HOSPITAL'
  5='JAIL'
  6='OTHER TEMPORARY QUARTERS'
  11='OWN DWELLING UNIT'
  12='ON-BASE MIL FAM HOUSING'
  13='OFF-BASE MIL FAM HOUSING'
  14='ORPHANAGE'
  15='RELIGIOUS INSTITUTION'
  16='OTHER INDIVIDUAL QUARTERS'
  17='PARENTAL'
  18='HHI CONDUCTED WITH PARENT'
  19='R IN PARENTAL HOUSEHOLD'
;
value vx12f
  1='ABOARD SHIP, BARRACKS'
  2='BACHELOR, OFFICER QUARTERS'
  3='DORM, FRATERNITY, SORORITY'
  4='HOSPITAL'
  5='JAIL'
  6='OTHER TEMPORARY QUARTERS'
  11='OWN DWELLING UNIT'
  12='ON-BASE MIL FAM HOUSING'
  13='OFF-BASE MIL FAM HOUSING'
  14='ORPHANAGE'
  15='RELIGIOUS INSTITUTION'
  16='OTHER INDIVIDUAL QUARTERS'
  17='PARENTAL'
  18='HHI CONDUCTED WITH PARENT'
  19='R IN PARENTAL HOUSEHOLD'
;
value vx13f
  1='ABOARD SHIP, BARRACKS'
  2='BACHELOR, OFFICER QUARTERS'
  3='DORM, FRATERNITY, SORORITY'
  4='HOSPITAL'
  5='JAIL'
  6='OTHER TEMPORARY QUARTERS'
  11='OWN DWELLING UNIT'
  12='ON-BASE MIL FAM HOUSING'
  13='OFF-BASE MIL FAM HOUSING'
  14='ORPHANAGE'
  15='RELIGIOUS INSTITUTION'
  16='OTHER INDIVIDUAL QUARTERS'
  17='PARENTAL'
  18='HHI CONDUCTED WITH PARENT'
  19='R IN PARENTAL HOUSEHOLD'
;
value vx14f
  1='ABOARD SHIP, BARRACKS'
  2='BACHELOR, OFFICER QUARTERS'
  3='DORM, FRATERNITY, SORORITY'
  4='HOSPITAL'
  5='JAIL'
  6='OTHER TEMPORARY QUARTERS'
  11='OWN DWELLING UNIT'
  12='ON-BASE MIL FAM HOUSING'
  13='OFF-BASE MIL FAM HOUSING'
  14='ORPHANAGE'
  15='RELIGIOUS INSTITUTION'
  16='OTHER INDIVIDUAL QUARTERS'
  17='PARENTAL'
  18='HHI CONDUCTED WITH PARENT'
  19='R IN PARENTAL HOUSEHOLD'
;
value vx15f
  1='ABOARD SHIP, BARRACKS'
  2='BACHELOR, OFFICER QUARTERS'
  3='DORM, FRATERNITY, SORORITY'
  4='HOSPITAL'
  5='JAIL'
  6='OTHER TEMPORARY QUARTERS'
  11='OWN DWELLING UNIT'
  12='ON-BASE MIL FAM HOUSING'
  13='OFF-BASE MIL FAM HOUSING'
  14='ORPHANAGE'
  15='RELIGIOUS INSTITUTION'
  16='OTHER INDIVIDUAL QUARTERS'
  17='PARENTAL'
  18='HHI CONDUCTED WITH PARENT'
  19='R IN PARENTAL HOUSEHOLD'
;
value vx16f
  1='ABOARD SHIP, BARRACKS'
  2='BACHELOR, OFFICER QUARTERS'
  3='DORM, FRATERNITY, SORORITY'
  4='HOSPITAL'
  5='JAIL'
  6='OTHER TEMPORARY QUARTERS'
  11='OWN DWELLING UNIT'
  12='ON-BASE MIL FAM HOUSING'
  13='OFF-BASE MIL FAM HOUSING'
  14='ORPHANAGE'
  15='RELIGIOUS INSTITUTION'
  16='OTHER INDIVIDUAL QUARTERS'
  17='PARENTAL'
  18='HHI CONDUCTED WITH PARENT'
  19='R IN PARENTAL HOUSEHOLD'
;
value vx17f
  1='ABOARD SHIP, BARRACKS'
  2='BACHELOR, OFFICER QUARTERS'
  3='DORM, FRATERNITY, SORORITY'
  4='HOSPITAL'
  5='JAIL'
  6='OTHER TEMPORARY QUARTERS'
  11='OWN DWELLING UNIT'
  12='ON-BASE MIL FAM HOUSING'
  13='OFF-BASE MIL FAM HOUSING'
  14='ORPHANAGE'
  15='RELIGIOUS INSTITUTION'
  16='OTHER INDIVIDUAL QUARTERS'
  17='PARENTAL'
  18='HHI CONDUCTED WITH PARENT'
  19='R IN PARENTAL HOUSEHOLD'
;
value vx18f
  1='ABOARD SHIP, BARRACKS'
  2='BACHELOR, OFFICER QUARTERS'
  3='DORM, FRATERNITY, SORORITY'
  4='HOSPITAL'
  5='JAIL'
  6='OTHER TEMPORARY QUARTERS'
  11='OWN DWELLING UNIT'
  12='ON-BASE MIL FAM HOUSING'
  13='OFF-BASE MIL FAM HOUSING'
  14='ORPHANAGE'
  15='RELIGIOUS INSTITUTION'
  16='OTHER INDIVIDUAL QUARTERS'
  17='PARENTAL'
  18='HHI CONDUCTED WITH PARENT'
  19='R IN PARENTAL HOUSEHOLD'
;
value vx19f
  1='OPEN BAY OR TROOP BARRACKS, ABOARD SHIP'
  2='BACHELOR ENLISTED OR OFFICER QUARTERS'
  3='DORMITORY, FRATERNITY OR SORORITY'
  4='HOSPITAL'
  5='JAIL'
  6='OTHER TEMPORARY INDIVIDUAL QUARTERS (SPECIFY)'
  11='OWN DWELLING UNIT'
  12='ON-BASE MILITARY FAMILY HOUSING'
  13='OFF-BASE MILITARY FAMILY HOUSING'
  15='CONVENT, MONASTERY, OTHER RELIGIOUS INSTITUTE'
  16='OTHER INDIVIDUAL QUARTERS (SPECIFY)'
  19='RESPONDENT IN PARENT HOUSEHOLD'
;
value vx20f
  1='OPEN BAY OR TROOP BARRACKS, ABOARD SHIP'
  2='BACHELOR ENLISTED OR OFFICER QUARTERS'
  3='DORMITORY, FRATERNITY OR SORORITY'
  4='HOSPITAL'
  5='JAIL'
  6='OTHER TEMPORARY INDIVIDUAL QUARTERS (SPECIFY)'
  11='OWN DWELLING UNIT'
  12='ON-BASE MILITARY FAMILY HOUSING'
  13='OFF-BASE MILITARY FAMILY HOUSING'
  15='CONVENT, MONASTERY, OTHER RELIGIOUS INSTITUTE'
  16='OTHER INDIVIDUAL QUARTERS (SPECIFY)'
  19='RESPONDENT IN PARENT HOUSEHOLD'
;
value vx21f
  1='OPEN BAY OR TROOP BARRACKS, ABOARD SHIP'
  2='BACHELOR ENLISTED OR OFFICER QUARTERS'
  3='DORMITORY, FRATERNITY OR SORORITY'
  4='HOSPITAL'
  5='JAIL'
  6='OTHER TEMPORARY INDIVIDUAL QUARTERS (SPECIFY)'
  11='OWN DWELLING UNIT'
  12='ON-BASE MILITARY FAMILY HOUSING'
  13='OFF-BASE MILITARY FAMILY HOUSING'
  15='CONVENT, MONASTERY, OTHER RELIGIOUS INSTITUTE'
  16='OTHER INDIVIDUAL QUARTERS (SPECIFY)'
  19='RESPONDENT IN PARENT HOUSEHOLD'
;
value vx22f
  1='OPEN BAY OR TROOP BARRACKS, ABOARD SHIP'
  2='BACHELOR ENLISTED OR OFFICER QUARTERS'
  3='DORMITORY, FRATERNITY OR SORORITY'
  4='HOSPITAL'
  5='JAIL'
  6='OTHER TEMPORARY INDIVIDUAL QUARTERS (SPECIFY)'
  11='OWN DWELLING UNIT'
  12='ON-BASE MILITARY FAMILY HOUSING'
  13='OFF-BASE MILITARY FAMILY HOUSING'
  15='CONVENT, MONASTERY, OTHER RELIGIOUS INSTITUTE'
  16='OTHER INDIVIDUAL QUARTERS (SPECIFY)'
  19='RESPONDENT IN PARENT HOUSEHOLD'
;
value vx23f
  1='OPEN BAY OR TROOP BARRACKS, ABOARD SHIP'
  2='BACHELOR ENLISTED OR OFFICER QUARTERS'
  3='DORMITORY, FRATERNITY OR SORORITY'
  4='HOSPITAL'
  5='JAIL'
  6='OTHER TEMPORARY INDIVIDUAL QUARTERS (SPECIFY)'
  11='OWN DWELLING UNIT'
  12='ON-BASE MILITARY FAMILY HOUSING'
  13='OFF-BASE MILITARY FAMILY HOUSING'
  15='CONVENT, MONASTERY, OTHER RELIGIOUS INSTITUTE'
  16='OTHER INDIVIDUAL QUARTERS (SPECIFY)'
  19='RESPONDENT IN PARENT HOUSEHOLD'
;
value vx24f
  1='OPEN BAY OR TROOP BARRACKS, ABOARD SHIP'
  2='BACHELOR ENLISTED OR OFFICER QUARTERS'
  3='DORMITORY, FRATERNITY OR SORORITY'
  4='HOSPITAL'
  5='JAIL'
  6='OTHER TEMPORARY INDIVIDUAL QUARTERS (SPECIFY)'
  11='OWN DWELLING UNIT'
  12='ON-BASE MILITARY FAMILY HOUSING'
  13='OFF-BASE MILITARY FAMILY HOUSING'
  15='CONVENT, MONASTERY, OTHER RELIGIOUS INSTITUTE'
  16='OTHER INDIVIDUAL QUARTERS (SPECIFY)'
  19='RESPONDENT IN PARENT HOUSEHOLD'
;
value vx25f
  1='OPEN BAY OR TROOP BARRACKS, ABOARD SHIP'
  2='BACHELOR ENLISTED OR OFFICER QUARTERS'
  3='DORMITORY, FRATERNITY OR SORORITY'
  4='HOSPITAL'
  5='JAIL'
  6='OTHER TEMPORARY INDIVIDUAL QUARTERS (SPECIFY)'
  11='OWN DWELLING UNIT'
  12='ON-BASE MILITARY FAMILY HOUSING'
  13='OFF-BASE MILITARY FAMILY HOUSING'
  15='CONVENT, MONASTERY, OTHER RELIGIOUS INSTITUTE'
  16='OTHER INDIVIDUAL QUARTERS (SPECIFY)'
  19='RESPONDENT IN PARENT HOUSEHOLD'
;
value vx26f
  1='OPEN BAY OR TROOP BARRACKS, ABOARD SHIP'
  2='BACHELOR ENLISTED OR OFFICER QUARTERS'
  3='DORMITORY, FRATERNITY OR SORORITY'
  4='HOSPITAL'
  5='JAIL'
  6='OTHER TEMPORARY INDIVIDUAL QUARTERS (SPECIFY)'
  11='OWN DWELLING UNIT'
  12='ON-BASE MILITARY FAMILY HOUSING'
  13='OFF-BASE MILITARY FAMILY HOUSING'
  15='CONVENT, MONASTERY, OTHER RELIGIOUS INSTITUTE'
  16='OTHER INDIVIDUAL QUARTERS (SPECIFY)'
  19='RESPONDENT IN PARENT HOUSEHOLD'
;
value vx27f
  1='OPEN BAY OR TROOP BARRACKS, ABOARD SHIP'
  2='BACHELOR ENLISTED OR OFFICER QUARTERS'
  3='DORMITORY, FRATERNITY OR SORORITY'
  4='HOSPITAL'
  5='JAIL'
  6='OTHER TEMPORARY INDIVIDUAL QUARTERS (SPECIFY)'
  11='OWN DWELLING UNIT'
  12='ON-BASE MILITARY FAMILY HOUSING'
  13='OFF-BASE MILITARY FAMILY HOUSING'
  15='CONVENT, MONASTERY, OTHER RELIGIOUS INSTITUTE'
  16='OTHER INDIVIDUAL QUARTERS (SPECIFY)'
  19='RESPONDENT IN PARENT HOUSEHOLD'
;
value vx28f
  1='OPEN BAY OR TROOP BARRACKS, ABOARD SHIP'
  2='BACHELOR ENLISTED OR OFFICER QUARTERS'
  3='DORMITORY, FRATERNITY OR SORORITY'
  4='HOSPITAL'
  5='JAIL'
  6='OTHER TEMPORARY INDIVIDUAL QUARTERS (SPECIFY)'
  11='OWN DWELLING UNIT'
  12='ON-BASE MILITARY FAMILY HOUSING'
  13='OFF-BASE MILITARY FAMILY HOUSING'
  15='CONVENT, MONASTERY, OTHER RELIGIOUS INSTITUTE'
  16='OTHER INDIVIDUAL QUARTERS (SPECIFY)'
  19='RESPONDENT IN PARENT HOUSEHOLD'
;
value vx29f
  1='OPEN BAY OR TROOP BARRACKS, ABOARD SHIP'
  2='BACHELOR ENLISTED OR OFFICER QUARTERS'
  3='DORMITORY, FRATERNITY OR SORORITY'
  4='HOSPITAL'
  5='JAIL'
  6='OTHER TEMPORARY INDIVIDUAL QUARTERS (SPECIFY)'
  11='OWN DWELLING UNIT'
  12='ON-BASE MILITARY FAMILY HOUSING'
  13='OFF-BASE MILITARY FAMILY HOUSING'
  15='CONVENT, MONASTERY, OTHER RELIGIOUS INSTITUTE'
  16='OTHER INDIVIDUAL QUARTERS (SPECIFY)'
  17='LIVES WITH OTHER RELATIVES'
  18='LIVES AT FRIEND''S RESIDENCE'
  19='RESPONDENT IN PARENT HOUSEHOLD'
  21='HOMELESS'
  25='MOTEL/HOTEL'
  26='GROUP HOME OR BOARDING HOUSE'
  32='NURSING HOME OR RETIREMENT FACILITY'
;
value vx30f
  4='HOSPITAL'
  5='JAIL/PRISON'
  11='OWN RESIDENCE SUCH AS HOUSE, APARTMENT, CONDO, OR MOBILE HOME, ALONE OR WITH OTHERS'
  19='RESPONDENT IN PARENT HOUSEHOLD'
  20='RESPONDENT IN OTHER RELATIVE''S HOUSEHOLD'
  21='RETIREMENT COMMUNITY/FACILITY'
  22='GROUP HOME, RESIDENTIAL NURSING OR OTHER ASSISTED LIVING FACILITY'
  23='HALFWAY HOUSE, RESIDENTIAL MENTAL HEALTH TREATMENT OR DRUG/ALCOHOL REHAB'
  24='HOTEL, MOTEL, ROOMING, OR BOARDING HOUSE'
  25='SHELTER (FOR HOMELESS OR ABUSED) OR ON STREET'
  26='OTHER (SPECIFY)'
;
value vx31f
  1='SINGLE-FAMILY HOUSE (INCL. MOBILE HOME)'
  2='APARTMENT/CONDO/TOWNHOUSE'
  3='SOME OTHER TYPE OF HOUSING'
;
value vx32f
  4='Dormitory (inc. fraternity/sorority) or Military Barracks'
  5='Hotel, Motel, Rooming or Boarding House'
  6='Shelter (for homeless or abused) or on street'
  7='Jail/Prison/Detention/Work Release'
  8='(IF OFFERED) Mobile Home'
  9='Hospital'
  10='Group Home or Treatment Center'
  11='Other Type of Housing'
;
*/

/* 
 *--- Tabulations using reference number variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format R0173600 vx1f.;
  format R0188000 vx2f.;
  format R0214700 vx3f.;
  format R0214800 vx4f.;
  format R0402800 vx5f.;
  format R0612100 vx6f.;
  format R0828400 vx7f.;
  format R1075700 vx8f.;
  format R1451400 vx9f.;
  format R1798600 vx10f.;
  format R2160200 vx11f.;
  format R2369100 vx12f.;
  format R2500000 vx13f.;
  format R2900000 vx14f.;
  format R3100000 vx15f.;
  format R3500000 vx16f.;
  format R3700000 vx17f.;
  format R4100300 vx18f.;
  format R4500300 vx19f.;
  format R5200300 vx20f.;
  format R5800200 vx21f.;
  format R6530300 vx22f.;
  format R7090700 vx23f.;
  format R7800600 vx24f.;
  format T0001000 vx25f.;
  format T1200800 vx26f.;
  format T2260700 vx27f.;
  format T3195700 vx28f.;
  format T4181500 vx29f.;
  format T5152100 vx30f.;
  format T7721700 vx31f.;
  format T7721800 vx32f.;
run;
*/

/*
*--- Tabulations using default named variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format 'SAMPLE_ID_1979'n vx1f.;
  format 'HH1-1_1979'n vx2f.;
  format 'SAMPLE_RACE_78SCRN'n vx3f.;
  format 'SAMPLE_SEX_1979'n vx4f.;
  format 'HH1-1_1980'n vx5f.;
  format 'HH1-1_1981'n vx6f.;
  format 'HH1-1_1982'n vx7f.;
  format 'HH1-1_1983'n vx8f.;
  format 'HH1-1_1984'n vx9f.;
  format 'HH1-1_1985'n vx10f.;
  format 'HH1-1_1986'n vx11f.;
  format 'HH1-1_1987'n vx12f.;
  format 'HH1-1_1988'n vx13f.;
  format 'HH1-1_1989'n vx14f.;
  format 'HH1-1_1990'n vx15f.;
  format 'HH1-1_1991'n vx16f.;
  format 'HH1-1_1992'n vx17f.;
  format 'HH1-1_1993'n vx18f.;
  format 'HH1-1_1994'n vx19f.;
  format 'HH1-1_1996'n vx20f.;
  format 'HH1-1_1998'n vx21f.;
  format 'HH1-1_2000'n vx22f.;
  format 'HH1-1_2002'n vx23f.;
  format 'HH1-1_2004'n vx24f.;
  format 'HH1-1_2006'n vx25f.;
  format 'HH1-1_2008'n vx26f.;
  format 'HH1-1_2010'n vx27f.;
  format 'HH1-1_2012'n vx28f.;
  format 'HH1-1_2014'n vx29f.;
  format 'HH1-1_2016'n vx30f.;
  format 'HHI1-1_2018'n vx31f.;
  format 'HHI1-1X_2018'n vx32f.;
run;
*/