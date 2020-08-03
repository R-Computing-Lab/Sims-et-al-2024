options nocenter validvarname=any;

*---Read in space-delimited ascii file;

data new_data;


infile 'df_crime_gen1.dat' lrecl=251 missover DSD DLM=' ' print;
input
  H0000300
  H0000400
  H0000500
  H0000600
  H0000700
  H0000800
  H0000900
  H0001000
  H0001100
  H0001101
  H0003900
  H0004000
  H0004500
  H0006900
  H0007000
  H0007001
  H0007100
  H0008600
  H0013301
  H0013400
  H0013401
  H0013402
  H0013403
  H0013404
  H0013405
  H0013406
  H0013407
  H0013408
  H0016400
  H0016500
  H0016700
  H0016800
  H0016900
  H0017000
  H0020800
  H0020900
  H0020901
  H0021000
  H0021100
  H0021200
  H0021300
  H0021301
  H0021400
  R0000100
  R0144600
  R0173600
  R3894900
  R3895000
  R3895100
  R3895200
  R3895300
  R3895400
  R3895500
  R3895600
  R3895700
  R3895800
  R3895900
  R3896000
  R3896100
  R3896200
  R3896300
  R3896400
  R3896500
  R3896600
  R3896700
  R3896800
  R3896810
  R3896811
  R3896820
  R4978300
  R4978400
  R4978500
  R4978600
  R4978700
  R4978800
  R4978900
  R4978910
  T5006600
  T5740700
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

  label H0000300 = "CES-D - POOR APPETITE XRND";
  label H0000400 = "CES-D - COULD NOT SHAKE BLUES XRND";
  label H0000500 = "CES-D - TROUBL KEEPING MIND ON TASKS XRND";
  label H0000600 = "CES-D - DEPRESSED XRND";
  label H0000700 = "CES-D - EVERYTHING TOOK EXTRA EFFORT XRND";
  label H0000800 = "CES-D - RESTLESS SLEEP XRND";
  label H0000900 = "CES-D - FELT LONELY XRND";
  label H0001000 = "CES-D - SAD XRND";
  label H0001100 = "CES-D - COULD NOT GET GOING XRND";
  label H0001101 = "H40 7-ITEM CES-D SCORE XRND";
  label H0003900 = "SF-12 - EMOTIONAL PRBS LIMIT ACCMPLSHMT? XRND";
  label H0004000 = "SF-12 - EMOTIONAL PRBS MADE LESS CARFUL? XRND";
  label H0004500 = "SF-12 - HLTH PRBS HINDER SOC ACTIV? XRND";
  label H0006900 = "CCR-DR DIAGNS EMTNL,NRVS,PSYC PRBS? XRND";
  label H0007000 = "CCR-DATE DR DIAG EMTN,NRVS,PSYC PRB XRND";
  label H0007001 = "CCR-DATE DR DIAG EMTN,NRVS,PSYC PRB XRND";
  label H0007100 = "CCR-EMTN,NRVS,PSYC PROBS LST 12 MO? XRND";
  label H0008600 = "CCR-DEPRESN,EXCESS WORRY,NERVS PRB XRND";
  label H0013301 = "H50 7-ITEM CES-D SCORE XRND";
  label H0013400 = "CESD -  POOR APPETITE XRND";
  label H0013401 = "CESD - COULD NOT SHAKE BLUES XRND";
  label H0013402 = "CESD - TROUBLE KEEPING MIND ON TASK XRND";
  label H0013403 = "CESD - DEPRESSION XRND";
  label H0013404 = "CESD - EVERYTHING TAKING EXTRA EFFORT XRND";
  label H0013405 = "CESD - RESTLESS SLEEP XRND";
  label H0013406 = "CESD - FEELING LONELY XRND";
  label H0013407 = "CESD -  FEELING SAD XRND";
  label H0013408 = "CESD - COULD NOT GET GOING XRND";
  label H0016400 = "SF12 - EMOTIONAL PRBS LIMIT ACCMPLSHMT? XRND";
  label H0016500 = "SF12 - EMOTIONAL PRBS MADE LESS CARFUL? XRND";
  label H0016700 = "SF12 - CALM/PEACEFUL PAST 4 WKS? XRND";
  label H0016800 = "SF12 - HAVE ENERGY PAST 4 WKS? XRND";
  label H0016900 = "SF12 - DOWNHRTD OR BLUE PAST 4 WKS? XRND";
  label H0017000 = "SF12 - HLTH PRBS HINDER SOC ACTIV? XRND";
  label H0020800 = "DOCTOR EVER DIAGNOSED R SUFFERING FROM DEPRESSION XRND";
  label H0020900 = "DATE RS DEPRESSION DIAGNOSED XRND";
  label H0020901 = "DATE RS DEPRESSION DIAGNOSED XRND";
  label H0021000 = "R SUFFERED FROM DEPRESSION IN LAST 12 MOS XRND";
  label H0021100 = "PSYCHIATRIC DIAGNOSIS IN 40+ HEALTH MOD XRND";
  label H0021200 = "DR EVER SAID R HAD EMO/NERV/PSYC PBLS OT THAN DEP XRND";
  label H0021300 = "DATE R EMO/NERV/PSYC PBLS DIAGNOSED XRND";
  label H0021301 = "DATE R EMO/NERV/PSYC PBLS DIAGNOSED XRND";
  label H0021400 = "R HAD ANY EMO/NERV/PSYC PROBLEMS IN LAST 12 MOS XRND";
  label R0000100 = "ID# (1-12686) 79";
  label R0144600 = "HLTH CONSOLIDATION CODE 5-D 79";
  label R0173600 = "SAMPLE ID  79 INT";
  label R3894900 = "CES-D-BOTHERED BY THINGS 92";
  label R3895000 = "CES-D-POOR APPETITE 92";
  label R3895100 = "CES-D-UNABLE TO SHAKE BLUES 92";
  label R3895200 = "CES-D-FELT GOOD AS OTHR PEOPLE 92";
  label R3895300 = "CES-D-TRBLE KEEPING MIND ON TASKS 92";
  label R3895400 = "CES-D-DEPRESSED 92";
  label R3895500 = "CES-D-THINGS TOOK EXTRA EFFORT 92";
  label R3895600 = "CES-D-HOPEFUL 92";
  label R3895700 = "CES-D-A FAILURE 92";
  label R3895800 = "CES-D-FEARFUL 92";
  label R3895900 = "CES-D-RESTLESS SLEEP 92";
  label R3896000 = "CES-D-HAPPY 92";
  label R3896100 = "CES-D-LESS TALKATIVE THAN USUAL 92";
  label R3896200 = "CES-D-LONELY 92";
  label R3896300 = "CES-D-OTHERS WERE UNFRIENDLY 92";
  label R3896400 = "CES-D-ENJOYED LIFE 92";
  label R3896500 = "CES-D-CRYING SPELLS 92";
  label R3896600 = "CES-D-SAD 92";
  label R3896700 = "CES-D-DISLIKED BY OTHERS 92";
  label R3896800 = "CES-D-COULD NOT GET GOING 92";
  label R3896810 = "20-ITEM CES-D SCORE 92";
  label R3896811 = "FLAG FOR 20-ITEM CES-D SCORE 92";
  label R3896820 = "7-ITEM CES-D SCORE 92";
  label R4978300 = "CES-D - POOR APPETITE 94";
  label R4978400 = "CES-D-TRBLE KPNG MIND ON TASKS 94";
  label R4978500 = "CES-D - DEPRESSED 94";
  label R4978600 = "CES-D - TOOK EXTRA EFFORT 94";
  label R4978700 = "CES-D - RESTLESS SLEEP 94";
  label R4978800 = "CES-D - SAD 94";
  label R4978900 = "CES-D - COULD NOT GET GOING 94";
  label R4978910 = "7-ITEM CES-D SCORE 94";
  label T5006600 = "R SATISFACTION WITH LIFE 2014";
  label T5740700 = "R SATISFACTION WITH LIFE 2016";

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
  H0000300 = 'H40-CESD~000001_XRND'n
  H0000400 = 'H40-CESD~000002_XRND'n
  H0000500 = 'H40-CESD~000003_XRND'n
  H0000600 = 'H40-CESD~000004_XRND'n
  H0000700 = 'H40-CESD~000005_XRND'n
  H0000800 = 'H40-CESD~000006_XRND'n
  H0000900 = 'H40-CESD~000007_XRND'n
  H0001000 = 'H40-CESD~000008_XRND'n
  H0001100 = 'H40-CESD~000009_XRND'n
  H0001101 = 'H40-CESD_SCORE_7_ITEM_XRND'n
  H0003900 = 'H40-SF12-5_XRND'n
  H0004000 = 'H40-SF12-5B_XRND'n
  H0004500 = 'H40-SF12-8_XRND'n
  H0006900 = 'H40-CHRC-8_XRND'n
  H0007000 = 'H40-CHRC-8A~M_XRND'n
  H0007001 = 'H40-CHRC-8A~Y_XRND'n
  H0007100 = 'H40-CHRC-8B_XRND'n
  H0008600 = 'H40-CHRC-10K_XRND'n
  H0013301 = 'H50-CESD_SCORE_7_ITEM_XRND'n
  H0013400 = 'H50CESD~000001_XRND'n
  H0013401 = 'H50CESD~000002_XRND'n
  H0013402 = 'H50CESD~000003_XRND'n
  H0013403 = 'H50CESD~000004_XRND'n
  H0013404 = 'H50CESD~000005_XRND'n
  H0013405 = 'H50CESD~000006_XRND'n
  H0013406 = 'H50CESD~000007_XRND'n
  H0013407 = 'H50CESD~000008_XRND'n
  H0013408 = 'H50CESD~000009_XRND'n
  H0016400 = 'H50SF12-5_XRND'n
  H0016500 = 'H50SF12-5B_XRND'n
  H0016700 = 'H50SF12-7_XRND'n
  H0016800 = 'H50SF12-7B_XRND'n
  H0016900 = 'H50SF12-7C_XRND'n
  H0017000 = 'H50SF12-8_XRND'n
  H0020800 = 'H50CHRC-7B_XRND'n
  H0020900 = 'H50CHRC-7C~M_XRND'n
  H0020901 = 'H50CHRC-7C~Y_XRND'n
  H0021000 = 'H50CHRC-7D_XRND'n
  H0021100 = 'H50CHRC_CHK6_XRND'n
  H0021200 = 'H50CHRC-8_XRND'n
  H0021300 = 'H50CHRC-8A~M_XRND'n
  H0021301 = 'H50CHRC-8A~Y_XRND'n
  H0021400 = 'H50CHRC-8B_XRND'n
  R0000100 = 'CASEID_1979'n
  R0144600 = 'HEALTH_CODE_1979'n
  R0173600 = 'SAMPLE_ID_1979'n
  R3894900 = 'CESD~000000_1992'n
  R3895000 = 'CESD~000001_1992'n
  R3895100 = 'CESD~000002_1992'n
  R3895200 = 'CESD~000002A_1992'n
  R3895300 = 'CESD~000003_1992'n
  R3895400 = 'CESD~000004_1992'n
  R3895500 = 'CESD~000005_1992'n
  R3895600 = 'CESD~000005A_1992'n
  R3895700 = 'CESD~000005B_1992'n
  R3895800 = 'CESD~000005C_1992'n
  R3895900 = 'CESD~000006_1992'n
  R3896000 = 'CESD~000006A_1992'n
  R3896100 = 'CESD~000006B_1992'n
  R3896200 = 'CESD~000007_1992'n
  R3896300 = 'CESD~000007A_1992'n
  R3896400 = 'CESD~000007B_1992'n
  R3896500 = 'CESD~000007C_1992'n
  R3896600 = 'CESD~000008_1992'n
  R3896700 = 'CESD~000008A_1992'n
  R3896800 = 'CESD~000009_1992'n
  R3896810 = 'CESD_SCORE_20_ITEM_1992'n
  R3896811 = 'CESD_FLAG_1992'n
  R3896820 = 'CESD_SCORE_7_ITEM_1992'n
  R4978300 = 'CESD~000001_1994'n
  R4978400 = 'CESD~000003_1994'n
  R4978500 = 'CESD~000004_1994'n
  R4978600 = 'CESD~000005_1994'n
  R4978700 = 'CESD~000006_1994'n
  R4978800 = 'CESD~000008_1994'n
  R4978900 = 'CESD~000009_1994'n
  R4978910 = 'CESD_SCORE_7_ITEM_1994'n
  T5006600 = 'LIFE-SATISFACTION_2014'n
  T5740700 = 'LIFE-SATISFACTION_2016'n
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
value vx0f
  0='Rarely/None of the time/1 Day'
  1='Some/A little of the time/1-2 Days'
  2='Occasionally/Moderate amount of the time/3-4 Days'
  3='Most/All of the time/5-7 Days'
;
value vx1f
  0='Rarely/None of the time/1 Day'
  1='Some/A little of the time/1-2 Days'
  2='Occasionally/Moderate amount of the time/3-4 Days'
  3='Most/All of the time/5-7 Days'
;
value vx2f
  0='Rarely/None of the time/1 Day'
  1='Some/A little of the time/1-2 Days'
  2='Occasionally/Moderate amount of the time/3-4 Days'
  3='Most/All of the time/5-7 Days'
;
value vx3f
  0='Rarely/None of the time/1 Day'
  1='Some/A little of the time/1-2 Days'
  2='Occasionally/Moderate amount of the time/3-4 Days'
  3='Most/All of the time/5-7 Days'
;
value vx4f
  0='Rarely/None of the time/1 Day'
  1='Some/A little of the time/1-2 Days'
  2='Occasionally/Moderate amount of the time/3-4 Days'
  3='Most/All of the time/5-7 Days'
;
value vx5f
  0='Rarely/None of the time/1 Day'
  1='Some/A little of the time/1-2 Days'
  2='Occasionally/Moderate amount of the time/3-4 Days'
  3='Most/All of the time/5-7 Days'
;
value vx6f
  0='Rarely/None of the time/1 Day'
  1='Some/A little of the time/1-2 Days'
  2='Occasionally/Moderate amount of the time/3-4 Days'
  3='Most/All of the time/5-7 Days'
;
value vx7f
  0='Rarely/None of the time/1 Day'
  1='Some/A little of the time/1-2 Days'
  2='Occasionally/Moderate amount of the time/3-4 Days'
  3='Most/All of the time/5-7 Days'
;
value vx8f
  0='Rarely/None of the time/1 Day'
  1='Some/A little of the time/1-2 Days'
  2='Occasionally/Moderate amount of the time/3-4 Days'
  3='Most/All of the time/5-7 Days'
;
value vx9f
  0='0'
  1-4='1 TO 4'
  5-9='5 TO 9'
  10-14='10 TO 14'
  15-19='15 TO 19'
  20-24='20 TO 24'
;
value vx10f
  0='NO'
  1='YES'
;
value vx11f
  0='NO'
  1='YES'
;
value vx12f
  1='All the time'
  2='Most of the time'
  3='A good bit of the time'
  4='Some of the time'
  5='A little of the time'
  6='None of the time'
;
value vx13f
  0='NO'
  1='YES'
;
value vx14f
  1='1: January'
  2='2: February'
  3='3: March'
  4='4: April'
  5='5: May'
  6='6: June'
  7='7: July'
  8='8: August'
  9='9: September'
  10='10: October'
  11='11: November'
  12='12: December'
;
value vx15f
  0-1978='0 TO 1978: < 1978'
  1979='1979'
  1980='1980'
  1981='1981'
  1982='1982'
  1983='1983'
  1984='1984'
  1985='1985'
  1986='1986'
  1987='1987'
  1988='1988'
  1989='1989'
  1990='1990'
  1991='1991'
  1992='1992'
  1993='1993'
  1994='1994'
  1995='1995'
  1996='1996'
  1997='1997'
  1998='1998'
  1999='1999'
  2000='2000'
  2001='2001'
  2002='2002'
  2003='2003'
  2004='2004'
  2005='2005'
  2006='2006'
  2007='2007'
  2008='2008'
  2009='2009'
  2010='2010'
  2011='2011'
  2012='2012'
  2013='2013'
  2014='2014'
  2015='2015'
  2016='2016'
  2017='2017'
;
value vx16f
  0='NO'
  1='YES'
;
value vx17f
  0='NO'
  1='YES'
;
value vx18f
  0='0'
  1-4='1 TO 4'
  5-9='5 TO 9'
  10-14='10 TO 14'
  15-19='15 TO 19'
  20-24='20 TO 24'
;
value vx19f
  0='Rarely/None of the time/1 Day'
  1='Some/A little of the time/1-2 Days'
  2='Occasionally/Moderate amount of the time/3-4 Days'
  3='Most/All of the time/5-7 Days'
;
value vx20f
  0='Rarely/None of the time/1 Day'
  1='Some/A little of the time/1-2 Days'
  2='Occasionally/Moderate amount of the time/3-4 Days'
  3='Most/All of the time/5-7 Days'
;
value vx21f
  0='Rarely/None of the time/1 Day'
  1='Some/A little of the time/1-2 Days'
  2='Occasionally/Moderate amount of the time/3-4 Days'
  3='Most/All of the time/5-7 Days'
;
value vx22f
  0='Rarely/None of the time/1 Day'
  1='Some/A little of the time/1-2 Days'
  2='Occasionally/Moderate amount of the time/3-4 Days'
  3='Most/All of the time/5-7 Days'
;
value vx23f
  0='Rarely/None of the time/1 Day'
  1='Some/A little of the time/1-2 Days'
  2='Occasionally/Moderate amount of the time/3-4 Days'
  3='Most/All of the time/5-7 Days'
;
value vx24f
  0='Rarely/None of the time/1 Day'
  1='Some/A little of the time/1-2 Days'
  2='Occasionally/Moderate amount of the time/3-4 Days'
  3='Most/All of the time/5-7 Days'
;
value vx25f
  0='Rarely/None of the time/1 Day'
  1='Some/A little of the time/1-2 Days'
  2='Occasionally/Moderate amount of the time/3-4 Days'
  3='Most/All of the time/5-7 Days'
;
value vx26f
  0='Rarely/None of the time/1 Day'
  1='Some/A little of the time/1-2 Days'
  2='Occasionally/Moderate amount of the time/3-4 Days'
  3='Most/All of the time/5-7 Days'
;
value vx27f
  0='Rarely/None of the time/1 Day'
  1='Some/A little of the time/1-2 Days'
  2='Occasionally/Moderate amount of the time/3-4 Days'
  3='Most/All of the time/5-7 Days'
;
value vx28f
  0='NO'
  1='YES'
;
value vx29f
  0='NO'
  1='YES'
;
value vx30f
  1='All the time'
  2='Most of the time'
  3='A good bit of the time'
  4='Some of the time'
  5='A little of the time'
  6='None of the time'
;
value vx31f
  1='All the time'
  2='Most of the time'
  3='A good bit of the time'
  4='Some of the time'
  5='A little of the time'
  6='None of the time'
;
value vx32f
  1='All the time'
  2='Most of the time'
  3='A good bit of the time'
  4='Some of the time'
  5='A little of the time'
  6='None of the time'
;
value vx33f
  1='All the time'
  2='Most of the time'
  3='A good bit of the time'
  4='Some of the time'
  5='A little of the time'
  6='None of the time'
;
value vx34f
  0='NO'
  1='YES'
;
value vx35f
  1='1: January'
  2='2: February'
  3='3: March'
  4='4: April'
  5='5: May'
  6='6: June'
  7='7: July'
  8='8: August'
  9='9: September'
  10='10: October'
  11='11: November'
  12='12: December'
;
value vx36f
  0-1996='0 TO 1996: <= 1996'
  1997='1997'
  1998='1998'
  1999='1999'
  2000='2000'
  2001='2001'
  2002='2002'
  2003='2003'
  2004='2004'
  2005='2005'
  2006='2006'
  2007='2007'
  2008='2008'
  2009='2009'
  2010='2010'
  2011='2011'
  2012='2012'
  2013='2013'
  2014='2014'
  2015='2015'
  2016='2016'
  2017='2017'
;
value vx37f
  0='NO'
  1='YES'
;
value vx38f
  0='0: 0  CONDITION DOES NOT APPLY'
  1='1: 1  CONDITION APPLIES'
;
value vx39f
  0='NO'
  1='YES'
;
value vx40f
  1='1: January'
  2='2: February'
  3='3: March'
  4='4: April'
  5='5: May'
  6='6: June'
  7='7: July'
  8='8: August'
  9='9: September'
  10='10: October'
  11='11: November'
  12='12: December'
;
value vx41f
  0-1996='0 TO 1996: <= 1996'
  1997='1997'
  1998='1998'
  1999='1999'
  2000='2000'
  2001='2001'
  2002='2002'
  2003='2003'
  2004='2004'
  2005='2005'
  2006='2006'
  2007='2007'
  2008='2008'
  2009='2009'
  2010='2010'
  2011='2011'
  2012='2012'
  2013='2013'
  2014='2014'
  2015='2015'
  2016='2016'
  2017='2017'
;
value vx42f
  0='NO'
  1='YES'
;
value vx44f
  0='0: 0 NO HEALTH LIMITATION'
  10-9999='10 TO 9999: 0010 THRU  9999 ICD-9 HEALTH CODE'
  10010-10829='10010 TO 10829: 10010 THRU 10829 ICD-9 ''V'' CODE'
  11800-11999='11800 TO 11999: 11800 THRU 11999 ICD-9 ''E'' CODE'
  12800-12997='12800 TO 12997: 12800 THRU 12997 ICD-9 ''M'' CODE'
;
value vx45f
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
value vx46f
  0='RARELY/NONE OF THE TIME/1 DAY'
  1='SOME/A LITTLE OF THE TIME/1-2 DAYS'
  2='OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS'
  3='MOST/ALL OF THE TIME/5-7 DAYS'
;
value vx47f
  0='RARELY/NONE OF THE TIME/1 DAY'
  1='SOME/A LITTLE OF THE TIME/1-2 DAYS'
  2='OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS'
  3='MOST/ALL OF THE TIME/5-7 DAYS'
;
value vx48f
  0='RARELY/NONE OF THE TIME/1 DAY'
  1='SOME/A LITTLE OF THE TIME/1-2 DAYS'
  2='OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS'
  3='MOST/ALL OF THE TIME/5-7 DAYS'
;
value vx49f
  0='RARELY/NONE OF THE TIME/1 DAY'
  1='SOME/A LITTLE OF THE TIME/1-2 DAYS'
  2='OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS'
  3='MOST/ALL OF THE TIME/5-7 DAYS'
;
value vx50f
  0='RARELY/NONE OF THE TIME/1 DAY'
  1='SOME/A LITTLE OF THE TIME/1-2 DAYS'
  2='OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS'
  3='MOST/ALL OF THE TIME/5-7 DAYS'
;
value vx51f
  0='RARELY/NONE OF THE TIME/1 DAY'
  1='SOME/A LITTLE OF THE TIME/1-2 DAYS'
  2='OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS'
  3='MOST/ALL OF THE TIME/5-7 DAYS'
;
value vx52f
  0='RARELY/NONE OF THE TIME/1 DAY'
  1='SOME/A LITTLE OF THE TIME/1-2 DAYS'
  2='OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS'
  3='MOST/ALL OF THE TIME/5-7 DAYS'
;
value vx53f
  0='RARELY/NONE OF THE TIME/1 DAY'
  1='SOME/A LITTLE OF THE TIME/1-2 DAYS'
  2='OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS'
  3='MOST/ALL OF THE TIME/5-7 DAYS'
;
value vx54f
  0='RARELY/NONE OF THE TIME/1 DAY'
  1='SOME/A LITTLE OF THE TIME/1-2 DAYS'
  2='OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS'
  3='MOST/ALL OF THE TIME/5-7 DAYS'
;
value vx55f
  0='RARELY/NONE OF THE TIME/1 DAY'
  1='SOME/A LITTLE OF THE TIME/1-2 DAYS'
  2='OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS'
  3='MOST/ALL OF THE TIME/5-7 DAYS'
;
value vx56f
  0='RARELY/NONE OF THE TIME/1 DAY'
  1='SOME/A LITTLE OF THE TIME/1-2 DAYS'
  2='OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS'
  3='MOST/ALL OF THE TIME/5-7 DAYS'
;
value vx57f
  0='RARELY/NONE OF THE TIME/1 DAY'
  1='SOME/A LITTLE OF THE TIME/1-2 DAYS'
  2='OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS'
  3='MOST/ALL OF THE TIME/5-7 DAYS'
;
value vx58f
  0='RARELY/NONE OF THE TIME/1 DAY'
  1='SOME/A LITTLE OF THE TIME/1-2 DAYS'
  2='OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS'
  3='MOST/ALL OF THE TIME/5-7 DAYS'
;
value vx59f
  0='RARELY/NONE OF THE TIME/1 DAY'
  1='SOME/A LITTLE OF THE TIME/1-2 DAYS'
  2='OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS'
  3='MOST/ALL OF THE TIME/5-7 DAYS'
;
value vx60f
  0='RARELY/NONE OF THE TIME/1 DAY'
  1='SOME/A LITTLE OF THE TIME/1-2 DAYS'
  2='OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS'
  3='MOST/ALL OF THE TIME/5-7 DAYS'
;
value vx61f
  0='RARELY/NONE OF THE TIME/1 DAY'
  1='SOME/A LITTLE OF THE TIME/1-2 DAYS'
  2='OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS'
  3='MOST/ALL OF THE TIME/5-7 DAYS'
;
value vx62f
  0='RARELY/NONE OF THE TIME/1 DAY'
  1='SOME/A LITTLE OF THE TIME/1-2 DAYS'
  2='OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS'
  3='MOST/ALL OF THE TIME/5-7 DAYS'
;
value vx63f
  0='RARELY/NONE OF THE TIME/1 DAY'
  1='SOME/A LITTLE OF THE TIME/1-2 DAYS'
  2='OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS'
  3='MOST/ALL OF THE TIME/5-7 DAYS'
;
value vx64f
  0='RARELY/NONE OF THE TIME/1 DAY'
  1='SOME/A LITTLE OF THE TIME/1-2 DAYS'
  2='OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS'
  3='MOST/ALL OF THE TIME/5-7 DAYS'
;
value vx65f
  0='RARELY/NONE OF THE TIME/1 DAY'
  1='SOME/A LITTLE OF THE TIME/1-2 DAYS'
  2='OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS'
  3='MOST/ALL OF THE TIME/5-7 DAYS'
;
value vx66f
  0='0'
  1-9='1 TO 9'
  10-19='10 TO 19'
  20-29='20 TO 29'
  30-39='30 TO 39'
  40-49='40 TO 49'
  50-59='50 TO 59'
  60-69='60 TO 69'
;
value vx67f
  0='0'
  1-4='1 TO 4'
  5-9='5 TO 9'
  10-14='10 TO 14'
  15-19='15 TO 19'
  20-24='20 TO 24'
  25-29='25 TO 29'
;
value vx68f
  0='0'
  1-4='1 TO 4'
  5-9='5 TO 9'
  10-14='10 TO 14'
  15-19='15 TO 19'
  20-24='20 TO 24'
  25-29='25 TO 29'
;
value vx69f
  0='Rarely/None of the Time/1 Day'
  1='Some/A Little of the Time/1-2 Days'
  2='Occasionally/Moderate Amount of the Time/3-4 Days'
  3='Most/All of the Time/5-7 Days'
;
value vx70f
  0='Rarely/None of the Time/1 Day'
  1='Some/A Little of the Time/1-2 Days'
  2='Occasionally/Moderate Amount of the Time/3-4 Days'
  3='Most/All of the Time/5-7 Days'
;
value vx71f
  0='Rarely/None of the Time/1 Day'
  1='Some/A Little of the Time/1-2 Days'
  2='Occasionally/Moderate Amount of the Time/3-4 Days'
  3='Most/All of the Time/5-7 Days'
;
value vx72f
  0='Rarely/None of the Time/1 Day'
  1='Some/A Little of the Time/1-2 Days'
  2='Occasionally/Moderate Amount of the Time/3-4 Days'
  3='Most/All of the Time/5-7 Days'
;
value vx73f
  0='Rarely/None of the Time/1 Day'
  1='Some/A Little of the Time/1-2 Days'
  2='Occasionally/Moderate Amount of the Time/3-4 Days'
  3='Most/All of the Time/5-7 Days'
;
value vx74f
  0='Rarely/None of the Time/1 Day'
  1='Some/A Little of the Time/1-2 Days'
  2='Occasionally/Moderate Amount of the Time/3-4 Days'
  3='Most/All of the Time/5-7 Days'
;
value vx75f
  0='Rarely/None of the Time/1 Day'
  1='Some/A Little of the Time/1-2 Days'
  2='Occasionally/Moderate Amount of the Time/3-4 Days'
  3='Most/All of the Time/5-7 Days'
;
value vx76f
  0='0'
  1-4='1 TO 4'
  5-9='5 TO 9'
  10-14='10 TO 14'
  15-19='15 TO 19'
  20-24='20 TO 24'
  25-29='25 TO 29'
;
value vx77f
  1='1 (not at all satisfied)'
  2='2'
  3='3'
  4='4'
  5='5'
  6='6'
  7='7 (completely satisfied)'
;
value vx78f
  1='1 (not at all satisfied)'
  2='2'
  3='3'
  4='4'
  5='5'
  6='6'
  7='7 (completely satisfied)'
;
*/

/* 
 *--- Tabulations using reference number variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format H0000300 vx0f.;
  format H0000400 vx1f.;
  format H0000500 vx2f.;
  format H0000600 vx3f.;
  format H0000700 vx4f.;
  format H0000800 vx5f.;
  format H0000900 vx6f.;
  format H0001000 vx7f.;
  format H0001100 vx8f.;
  format H0001101 vx9f.;
  format H0003900 vx10f.;
  format H0004000 vx11f.;
  format H0004500 vx12f.;
  format H0006900 vx13f.;
  format H0007000 vx14f.;
  format H0007001 vx15f.;
  format H0007100 vx16f.;
  format H0008600 vx17f.;
  format H0013301 vx18f.;
  format H0013400 vx19f.;
  format H0013401 vx20f.;
  format H0013402 vx21f.;
  format H0013403 vx22f.;
  format H0013404 vx23f.;
  format H0013405 vx24f.;
  format H0013406 vx25f.;
  format H0013407 vx26f.;
  format H0013408 vx27f.;
  format H0016400 vx28f.;
  format H0016500 vx29f.;
  format H0016700 vx30f.;
  format H0016800 vx31f.;
  format H0016900 vx32f.;
  format H0017000 vx33f.;
  format H0020800 vx34f.;
  format H0020900 vx35f.;
  format H0020901 vx36f.;
  format H0021000 vx37f.;
  format H0021100 vx38f.;
  format H0021200 vx39f.;
  format H0021300 vx40f.;
  format H0021301 vx41f.;
  format H0021400 vx42f.;
  format R0144600 vx44f.;
  format R0173600 vx45f.;
  format R3894900 vx46f.;
  format R3895000 vx47f.;
  format R3895100 vx48f.;
  format R3895200 vx49f.;
  format R3895300 vx50f.;
  format R3895400 vx51f.;
  format R3895500 vx52f.;
  format R3895600 vx53f.;
  format R3895700 vx54f.;
  format R3895800 vx55f.;
  format R3895900 vx56f.;
  format R3896000 vx57f.;
  format R3896100 vx58f.;
  format R3896200 vx59f.;
  format R3896300 vx60f.;
  format R3896400 vx61f.;
  format R3896500 vx62f.;
  format R3896600 vx63f.;
  format R3896700 vx64f.;
  format R3896800 vx65f.;
  format R3896810 vx66f.;
  format R3896811 vx67f.;
  format R3896820 vx68f.;
  format R4978300 vx69f.;
  format R4978400 vx70f.;
  format R4978500 vx71f.;
  format R4978600 vx72f.;
  format R4978700 vx73f.;
  format R4978800 vx74f.;
  format R4978900 vx75f.;
  format R4978910 vx76f.;
  format T5006600 vx77f.;
  format T5740700 vx78f.;
run;
*/

/*
*--- Tabulations using default named variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format 'H40-CESD~000001_XRND'n vx0f.;
  format 'H40-CESD~000002_XRND'n vx1f.;
  format 'H40-CESD~000003_XRND'n vx2f.;
  format 'H40-CESD~000004_XRND'n vx3f.;
  format 'H40-CESD~000005_XRND'n vx4f.;
  format 'H40-CESD~000006_XRND'n vx5f.;
  format 'H40-CESD~000007_XRND'n vx6f.;
  format 'H40-CESD~000008_XRND'n vx7f.;
  format 'H40-CESD~000009_XRND'n vx8f.;
  format 'H40-CESD_SCORE_7_ITEM_XRND'n vx9f.;
  format 'H40-SF12-5_XRND'n vx10f.;
  format 'H40-SF12-5B_XRND'n vx11f.;
  format 'H40-SF12-8_XRND'n vx12f.;
  format 'H40-CHRC-8_XRND'n vx13f.;
  format 'H40-CHRC-8A~M_XRND'n vx14f.;
  format 'H40-CHRC-8A~Y_XRND'n vx15f.;
  format 'H40-CHRC-8B_XRND'n vx16f.;
  format 'H40-CHRC-10K_XRND'n vx17f.;
  format 'H50-CESD_SCORE_7_ITEM_XRND'n vx18f.;
  format 'H50CESD~000001_XRND'n vx19f.;
  format 'H50CESD~000002_XRND'n vx20f.;
  format 'H50CESD~000003_XRND'n vx21f.;
  format 'H50CESD~000004_XRND'n vx22f.;
  format 'H50CESD~000005_XRND'n vx23f.;
  format 'H50CESD~000006_XRND'n vx24f.;
  format 'H50CESD~000007_XRND'n vx25f.;
  format 'H50CESD~000008_XRND'n vx26f.;
  format 'H50CESD~000009_XRND'n vx27f.;
  format 'H50SF12-5_XRND'n vx28f.;
  format 'H50SF12-5B_XRND'n vx29f.;
  format 'H50SF12-7_XRND'n vx30f.;
  format 'H50SF12-7B_XRND'n vx31f.;
  format 'H50SF12-7C_XRND'n vx32f.;
  format 'H50SF12-8_XRND'n vx33f.;
  format 'H50CHRC-7B_XRND'n vx34f.;
  format 'H50CHRC-7C~M_XRND'n vx35f.;
  format 'H50CHRC-7C~Y_XRND'n vx36f.;
  format 'H50CHRC-7D_XRND'n vx37f.;
  format 'H50CHRC_CHK6_XRND'n vx38f.;
  format 'H50CHRC-8_XRND'n vx39f.;
  format 'H50CHRC-8A~M_XRND'n vx40f.;
  format 'H50CHRC-8A~Y_XRND'n vx41f.;
  format 'H50CHRC-8B_XRND'n vx42f.;
  format 'HEALTH_CODE_1979'n vx44f.;
  format 'SAMPLE_ID_1979'n vx45f.;
  format 'CESD~000000_1992'n vx46f.;
  format 'CESD~000001_1992'n vx47f.;
  format 'CESD~000002_1992'n vx48f.;
  format 'CESD~000002A_1992'n vx49f.;
  format 'CESD~000003_1992'n vx50f.;
  format 'CESD~000004_1992'n vx51f.;
  format 'CESD~000005_1992'n vx52f.;
  format 'CESD~000005A_1992'n vx53f.;
  format 'CESD~000005B_1992'n vx54f.;
  format 'CESD~000005C_1992'n vx55f.;
  format 'CESD~000006_1992'n vx56f.;
  format 'CESD~000006A_1992'n vx57f.;
  format 'CESD~000006B_1992'n vx58f.;
  format 'CESD~000007_1992'n vx59f.;
  format 'CESD~000007A_1992'n vx60f.;
  format 'CESD~000007B_1992'n vx61f.;
  format 'CESD~000007C_1992'n vx62f.;
  format 'CESD~000008_1992'n vx63f.;
  format 'CESD~000008A_1992'n vx64f.;
  format 'CESD~000009_1992'n vx65f.;
  format 'CESD_SCORE_20_ITEM_1992'n vx66f.;
  format 'CESD_FLAG_1992'n vx67f.;
  format 'CESD_SCORE_7_ITEM_1992'n vx68f.;
  format 'CESD~000001_1994'n vx69f.;
  format 'CESD~000003_1994'n vx70f.;
  format 'CESD~000004_1994'n vx71f.;
  format 'CESD~000005_1994'n vx72f.;
  format 'CESD~000006_1994'n vx73f.;
  format 'CESD~000008_1994'n vx74f.;
  format 'CESD~000009_1994'n vx75f.;
  format 'CESD_SCORE_7_ITEM_1994'n vx76f.;
  format 'LIFE-SATISFACTION_2014'n vx77f.;
  format 'LIFE-SATISFACTION_2016'n vx78f.;
run;
*/