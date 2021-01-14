options nocenter validvarname=any;

*---Read in space-delimited ascii file;

data new_data;


infile 'default.dat' lrecl=26 missover DSD DLM=' ' print;
input
  R0000100
  R0000300
  R0000500
  R0000600
  R0173600
  R0214700
  R0214800
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
  label R0000300 = "DATE OF BIRTH - MONTH 79";
  label R0000500 = "DATE OF BIRTH - YR 79";
  label R0000600 = "AGE OF R 79";
  label R0173600 = "SAMPLE ID  79 INT";
  label R0214700 = "RACL/ETHNIC COHORT /SCRNR 79";
  label R0214800 = "SEX OF R 79";

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
  R0000300 = 'Q1-3_A~M_1979'n
  R0000500 = 'Q1-3_A~Y_1979'n
  R0000600 = 'FAM-1B_1979'n
  R0173600 = 'SAMPLE_ID_1979'n
  R0214700 = 'SAMPLE_RACE_78SCRN'n
  R0214800 = 'SAMPLE_SEX_1979'n
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
  0='0: < 1'
  1='1'
  2='2'
  3='3'
  4='4'
  5='5'
  6='6'
  7='7'
  8='8'
  9='9'
  10='10'
  11='11'
  12='12'
  13='13'
  14='14'
  15='15'
  16='16'
  17-99999='17 TO 99999: 17+'
;
value vx2f
  0-56='0 TO 56: < 57'
  57='57'
  58='58'
  59='59'
  60='60'
  61='61'
  62='62'
  63='63'
  64='64'
  65='65'
  66='66'
  67='67'
  68='68'
  69='69'
  70='70'
  71='71'
  72='72'
  73-99999='73 TO 99999: 73+'
;
value vx3f
  0-13='0 TO 13: < 14'
  14='14'
  15='15'
  16='16'
  17='17'
  18='18'
  19='19'
  20='20'
  21='21'
  22='22'
  23='23'
  24='24'
  25='25'
  26='26'
  27='27'
  28='28'
  29='29'
  30-99999='30 TO 99999: 30+'
;
value vx4f
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
value vx5f
  1='HISPANIC'
  2='BLACK'
  3='NON-BLACK, NON-HISPANIC'
;
value vx6f
  1='MALE'
  2='FEMALE'
;
*/

/* 
 *--- Tabulations using reference number variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format R0000300 vx1f.;
  format R0000500 vx2f.;
  format R0000600 vx3f.;
  format R0173600 vx4f.;
  format R0214700 vx5f.;
  format R0214800 vx6f.;
run;
*/

/*
*--- Tabulations using default named variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format 'Q1-3_A~M_1979'n vx1f.;
  format 'Q1-3_A~Y_1979'n vx2f.;
  format 'FAM-1B_1979'n vx3f.;
  format 'SAMPLE_ID_1979'n vx4f.;
  format 'SAMPLE_RACE_78SCRN'n vx5f.;
  format 'SAMPLE_SEX_1979'n vx6f.;
run;
*/