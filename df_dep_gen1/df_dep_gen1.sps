file handle pcdat/name='df_crime_gen1.dat' /lrecl=251.
data list file pcdat free /
  H0000300 (F2)
  H0000400 (F2)
  H0000500 (F2)
  H0000600 (F2)
  H0000700 (F2)
  H0000800 (F2)
  H0000900 (F2)
  H0001000 (F2)
  H0001100 (F2)
  H0001101 (F2)
  H0003900 (F2)
  H0004000 (F2)
  H0004500 (F2)
  H0006900 (F2)
  H0007000 (F2)
  H0007001 (F4)
  H0007100 (F2)
  H0008600 (F2)
  H0013301 (F2)
  H0013400 (F2)
  H0013401 (F2)
  H0013402 (F2)
  H0013403 (F2)
  H0013404 (F2)
  H0013405 (F2)
  H0013406 (F2)
  H0013407 (F2)
  H0013408 (F2)
  H0016400 (F2)
  H0016500 (F2)
  H0016700 (F2)
  H0016800 (F2)
  H0016900 (F2)
  H0017000 (F2)
  H0020800 (F2)
  H0020900 (F2)
  H0020901 (F4)
  H0021000 (F2)
  H0021100 (F2)
  H0021200 (F2)
  H0021300 (F2)
  H0021301 (F4)
  H0021400 (F2)
  R0000100 (F5)
  R0144600 (F5)
  R0173600 (F2)
  R3894900 (F2)
  R3895000 (F2)
  R3895100 (F2)
  R3895200 (F2)
  R3895300 (F2)
  R3895400 (F2)
  R3895500 (F2)
  R3895600 (F2)
  R3895700 (F2)
  R3895800 (F2)
  R3895900 (F2)
  R3896000 (F2)
  R3896100 (F2)
  R3896200 (F2)
  R3896300 (F2)
  R3896400 (F2)
  R3896500 (F2)
  R3896600 (F2)
  R3896700 (F2)
  R3896800 (F2)
  R3896810 (F2)
  R3896811 (F2)
  R3896820 (F2)
  R4978300 (F2)
  R4978400 (F2)
  R4978500 (F2)
  R4978600 (F2)
  R4978700 (F2)
  R4978800 (F2)
  R4978900 (F2)
  R4978910 (F2)
  T5006600 (F2)
  T5740700 (F2)
.
* The following code works with current versions of SPSS.
missing values all (-5 thru -1).
* older versions of SPSS may require this:
* recode all (-5,-3,-2,-1=-4).
* missing values all (-4).
variable labels
  H0000300  "CES-D - POOR APPETITE XRND"
  H0000400  "CES-D - COULD NOT SHAKE BLUES XRND"
  H0000500  "CES-D - TROUBL KEEPING MIND ON TASKS XRND"
  H0000600  "CES-D - DEPRESSED XRND"
  H0000700  "CES-D - EVERYTHING TOOK EXTRA EFFORT XRND"
  H0000800  "CES-D - RESTLESS SLEEP XRND"
  H0000900  "CES-D - FELT LONELY XRND"
  H0001000  "CES-D - SAD XRND"
  H0001100  "CES-D - COULD NOT GET GOING XRND"
  H0001101  "H40 7-ITEM CES-D SCORE XRND"
  H0003900  "SF-12 - EMOTIONAL PRBS LIMIT ACCMPLSHMT? XRND"
  H0004000  "SF-12 - EMOTIONAL PRBS MADE LESS CARFUL? XRND"
  H0004500  "SF-12 - HLTH PRBS HINDER SOC ACTIV? XRND"
  H0006900  "CCR-DR DIAGNS EMTNL,NRVS,PSYC PRBS? XRND"
  H0007000  "CCR-DATE DR DIAG EMTN,NRVS,PSYC PRB XRND"
  H0007001  "CCR-DATE DR DIAG EMTN,NRVS,PSYC PRB XRND"
  H0007100  "CCR-EMTN,NRVS,PSYC PROBS LST 12 MO? XRND"
  H0008600  "CCR-DEPRESN,EXCESS WORRY,NERVS PRB XRND"
  H0013301  "H50 7-ITEM CES-D SCORE XRND"
  H0013400  "CESD -  POOR APPETITE XRND"
  H0013401  "CESD - COULD NOT SHAKE BLUES XRND"
  H0013402  "CESD - TROUBLE KEEPING MIND ON TASK XRND"
  H0013403  "CESD - DEPRESSION XRND"
  H0013404  "CESD - EVERYTHING TAKING EXTRA EFFORT XRND"
  H0013405  "CESD - RESTLESS SLEEP XRND"
  H0013406  "CESD - FEELING LONELY XRND"
  H0013407  "CESD -  FEELING SAD XRND"
  H0013408  "CESD - COULD NOT GET GOING XRND"
  H0016400  "SF12 - EMOTIONAL PRBS LIMIT ACCMPLSHMT? XRND"
  H0016500  "SF12 - EMOTIONAL PRBS MADE LESS CARFUL? XRND"
  H0016700  "SF12 - CALM/PEACEFUL PAST 4 WKS? XRND"
  H0016800  "SF12 - HAVE ENERGY PAST 4 WKS? XRND"
  H0016900  "SF12 - DOWNHRTD OR BLUE PAST 4 WKS? XRND"
  H0017000  "SF12 - HLTH PRBS HINDER SOC ACTIV? XRND"
  H0020800  "DOCTOR EVER DIAGNOSED R SUFFERING FROM DEPRESSION XRND"
  H0020900  "DATE RS DEPRESSION DIAGNOSED XRND"
  H0020901  "DATE RS DEPRESSION DIAGNOSED XRND"
  H0021000  "R SUFFERED FROM DEPRESSION IN LAST 12 MOS XRND"
  H0021100  "PSYCHIATRIC DIAGNOSIS IN 40+ HEALTH MOD XRND"
  H0021200  "DR EVER SAID R HAD EMO/NERV/PSYC PBLS OT THAN DEP XRND"
  H0021300  "DATE R EMO/NERV/PSYC PBLS DIAGNOSED XRND"
  H0021301  "DATE R EMO/NERV/PSYC PBLS DIAGNOSED XRND"
  H0021400  "R HAD ANY EMO/NERV/PSYC PROBLEMS IN LAST 12 MOS XRND"
  R0000100  "ID# (1-12686) 79"
  R0144600  "HLTH CONSOLIDATION CODE 5-D 79"
  R0173600  "SAMPLE ID  79 INT"
  R3894900  "CES-D-BOTHERED BY THINGS 92"
  R3895000  "CES-D-POOR APPETITE 92"
  R3895100  "CES-D-UNABLE TO SHAKE BLUES 92"
  R3895200  "CES-D-FELT GOOD AS OTHR PEOPLE 92"
  R3895300  "CES-D-TRBLE KEEPING MIND ON TASKS 92"
  R3895400  "CES-D-DEPRESSED 92"
  R3895500  "CES-D-THINGS TOOK EXTRA EFFORT 92"
  R3895600  "CES-D-HOPEFUL 92"
  R3895700  "CES-D-A FAILURE 92"
  R3895800  "CES-D-FEARFUL 92"
  R3895900  "CES-D-RESTLESS SLEEP 92"
  R3896000  "CES-D-HAPPY 92"
  R3896100  "CES-D-LESS TALKATIVE THAN USUAL 92"
  R3896200  "CES-D-LONELY 92"
  R3896300  "CES-D-OTHERS WERE UNFRIENDLY 92"
  R3896400  "CES-D-ENJOYED LIFE 92"
  R3896500  "CES-D-CRYING SPELLS 92"
  R3896600  "CES-D-SAD 92"
  R3896700  "CES-D-DISLIKED BY OTHERS 92"
  R3896800  "CES-D-COULD NOT GET GOING 92"
  R3896810  "20-ITEM CES-D SCORE 92"
  R3896811  "FLAG FOR 20-ITEM CES-D SCORE 92"
  R3896820  "7-ITEM CES-D SCORE 92"
  R4978300  "CES-D - POOR APPETITE 94"
  R4978400  "CES-D-TRBLE KPNG MIND ON TASKS 94"
  R4978500  "CES-D - DEPRESSED 94"
  R4978600  "CES-D - TOOK EXTRA EFFORT 94"
  R4978700  "CES-D - RESTLESS SLEEP 94"
  R4978800  "CES-D - SAD 94"
  R4978900  "CES-D - COULD NOT GET GOING 94"
  R4978910  "7-ITEM CES-D SCORE 94"
  T5006600  "R SATISFACTION WITH LIFE 2014"
  T5740700  "R SATISFACTION WITH LIFE 2016"
.

* Recode continuous values. 
* recode 
    / 
 H0001101 
    (0 thru 0 eq 0)
    (1 thru 4 eq 1)
    (5 thru 9 eq 5)
    (10 thru 14 eq 10)
    (15 thru 19 eq 15)
    (20 thru 24 eq 20)
    / 
 H0007001 
    (0 thru 1978 eq 0)
    (1979 thru 1979 eq 1979)
    (1980 thru 1980 eq 1980)
    (1981 thru 1981 eq 1981)
    (1982 thru 1982 eq 1982)
    (1983 thru 1983 eq 1983)
    (1984 thru 1984 eq 1984)
    (1985 thru 1985 eq 1985)
    (1986 thru 1986 eq 1986)
    (1987 thru 1987 eq 1987)
    (1988 thru 1988 eq 1988)
    (1989 thru 1989 eq 1989)
    (1990 thru 1990 eq 1990)
    (1991 thru 1991 eq 1991)
    (1992 thru 1992 eq 1992)
    (1993 thru 1993 eq 1993)
    (1994 thru 1994 eq 1994)
    (1995 thru 1995 eq 1995)
    (1996 thru 1996 eq 1996)
    (1997 thru 1997 eq 1997)
    (1998 thru 1998 eq 1998)
    (1999 thru 1999 eq 1999)
    (2000 thru 2000 eq 2000)
    (2001 thru 2001 eq 2001)
    (2002 thru 2002 eq 2002)
    (2003 thru 2003 eq 2003)
    (2004 thru 2004 eq 2004)
    (2005 thru 2005 eq 2005)
    (2006 thru 2006 eq 2006)
    (2007 thru 2007 eq 2007)
    (2008 thru 2008 eq 2008)
    (2009 thru 2009 eq 2009)
    (2010 thru 2010 eq 2010)
    (2011 thru 2011 eq 2011)
    (2012 thru 2012 eq 2012)
    (2013 thru 2013 eq 2013)
    (2014 thru 2014 eq 2014)
    (2015 thru 2015 eq 2015)
    (2016 thru 2016 eq 2016)
    (2017 thru 2017 eq 2017)
    / 
 H0013301 
    (0 thru 0 eq 0)
    (1 thru 4 eq 1)
    (5 thru 9 eq 5)
    (10 thru 14 eq 10)
    (15 thru 19 eq 15)
    (20 thru 24 eq 20)
    / 
 H0020901 
    (0 thru 1996 eq 0)
    (1997 thru 1997 eq 1997)
    (1998 thru 1998 eq 1998)
    (1999 thru 1999 eq 1999)
    (2000 thru 2000 eq 2000)
    (2001 thru 2001 eq 2001)
    (2002 thru 2002 eq 2002)
    (2003 thru 2003 eq 2003)
    (2004 thru 2004 eq 2004)
    (2005 thru 2005 eq 2005)
    (2006 thru 2006 eq 2006)
    (2007 thru 2007 eq 2007)
    (2008 thru 2008 eq 2008)
    (2009 thru 2009 eq 2009)
    (2010 thru 2010 eq 2010)
    (2011 thru 2011 eq 2011)
    (2012 thru 2012 eq 2012)
    (2013 thru 2013 eq 2013)
    (2014 thru 2014 eq 2014)
    (2015 thru 2015 eq 2015)
    (2016 thru 2016 eq 2016)
    (2017 thru 2017 eq 2017)
    / 
 H0021301 
    (0 thru 1996 eq 0)
    (1997 thru 1997 eq 1997)
    (1998 thru 1998 eq 1998)
    (1999 thru 1999 eq 1999)
    (2000 thru 2000 eq 2000)
    (2001 thru 2001 eq 2001)
    (2002 thru 2002 eq 2002)
    (2003 thru 2003 eq 2003)
    (2004 thru 2004 eq 2004)
    (2005 thru 2005 eq 2005)
    (2006 thru 2006 eq 2006)
    (2007 thru 2007 eq 2007)
    (2008 thru 2008 eq 2008)
    (2009 thru 2009 eq 2009)
    (2010 thru 2010 eq 2010)
    (2011 thru 2011 eq 2011)
    (2012 thru 2012 eq 2012)
    (2013 thru 2013 eq 2013)
    (2014 thru 2014 eq 2014)
    (2015 thru 2015 eq 2015)
    (2016 thru 2016 eq 2016)
    (2017 thru 2017 eq 2017)
    / 
 R0144600 
    (0 thru 0 eq 0)
    (10 thru 9999 eq 10)
    (10010 thru 10829 eq 10010)
    (11800 thru 11999 eq 11800)
    (12800 thru 12997 eq 12800)
    / 
 R3896810 
    (0 thru 0 eq 0)
    (1 thru 9 eq 1)
    (10 thru 19 eq 10)
    (20 thru 29 eq 20)
    (30 thru 39 eq 30)
    (40 thru 49 eq 40)
    (50 thru 59 eq 50)
    (60 thru 69 eq 60)
    / 
 R3896811 
    (0 thru 0 eq 0)
    (1 thru 4 eq 1)
    (5 thru 9 eq 5)
    (10 thru 14 eq 10)
    (15 thru 19 eq 15)
    (20 thru 24 eq 20)
    (25 thru 29 eq 25)
    / 
 R3896820 
    (0 thru 0 eq 0)
    (1 thru 4 eq 1)
    (5 thru 9 eq 5)
    (10 thru 14 eq 10)
    (15 thru 19 eq 15)
    (20 thru 24 eq 20)
    (25 thru 29 eq 25)
    / 
 R4978910 
    (0 thru 0 eq 0)
    (1 thru 4 eq 1)
    (5 thru 9 eq 5)
    (10 thru 14 eq 10)
    (15 thru 19 eq 15)
    (20 thru 24 eq 20)
    (25 thru 29 eq 25)
.

* value labels
 H0000300
    0 "Rarely/None of the time/1 Day"
    1 "Some/A little of the time/1-2 Days"
    2 "Occasionally/Moderate amount of the time/3-4 Days"
    3 "Most/All of the time/5-7 Days"
    /
 H0000400
    0 "Rarely/None of the time/1 Day"
    1 "Some/A little of the time/1-2 Days"
    2 "Occasionally/Moderate amount of the time/3-4 Days"
    3 "Most/All of the time/5-7 Days"
    /
 H0000500
    0 "Rarely/None of the time/1 Day"
    1 "Some/A little of the time/1-2 Days"
    2 "Occasionally/Moderate amount of the time/3-4 Days"
    3 "Most/All of the time/5-7 Days"
    /
 H0000600
    0 "Rarely/None of the time/1 Day"
    1 "Some/A little of the time/1-2 Days"
    2 "Occasionally/Moderate amount of the time/3-4 Days"
    3 "Most/All of the time/5-7 Days"
    /
 H0000700
    0 "Rarely/None of the time/1 Day"
    1 "Some/A little of the time/1-2 Days"
    2 "Occasionally/Moderate amount of the time/3-4 Days"
    3 "Most/All of the time/5-7 Days"
    /
 H0000800
    0 "Rarely/None of the time/1 Day"
    1 "Some/A little of the time/1-2 Days"
    2 "Occasionally/Moderate amount of the time/3-4 Days"
    3 "Most/All of the time/5-7 Days"
    /
 H0000900
    0 "Rarely/None of the time/1 Day"
    1 "Some/A little of the time/1-2 Days"
    2 "Occasionally/Moderate amount of the time/3-4 Days"
    3 "Most/All of the time/5-7 Days"
    /
 H0001000
    0 "Rarely/None of the time/1 Day"
    1 "Some/A little of the time/1-2 Days"
    2 "Occasionally/Moderate amount of the time/3-4 Days"
    3 "Most/All of the time/5-7 Days"
    /
 H0001100
    0 "Rarely/None of the time/1 Day"
    1 "Some/A little of the time/1-2 Days"
    2 "Occasionally/Moderate amount of the time/3-4 Days"
    3 "Most/All of the time/5-7 Days"
    /
 H0001101
    0 "0"
    1 "1 TO 4"
    5 "5 TO 9"
    10 "10 TO 14"
    15 "15 TO 19"
    20 "20 TO 24"
    /
 H0003900
    0 "NO"
    1 "YES"
    /
 H0004000
    0 "NO"
    1 "YES"
    /
 H0004500
    1 "All the time"
    2 "Most of the time"
    3 "A good bit of the time"
    4 "Some of the time"
    5 "A little of the time"
    6 "None of the time"
    /
 H0006900
    0 "NO"
    1 "YES"
    /
 H0007000
    1 "1: January"
    2 "2: February"
    3 "3: March"
    4 "4: April"
    5 "5: May"
    6 "6: June"
    7 "7: July"
    8 "8: August"
    9 "9: September"
    10 "10: October"
    11 "11: November"
    12 "12: December"
    /
 H0007001
    0 "0 TO 1978: < 1978"
    1979 "1979"
    1980 "1980"
    1981 "1981"
    1982 "1982"
    1983 "1983"
    1984 "1984"
    1985 "1985"
    1986 "1986"
    1987 "1987"
    1988 "1988"
    1989 "1989"
    1990 "1990"
    1991 "1991"
    1992 "1992"
    1993 "1993"
    1994 "1994"
    1995 "1995"
    1996 "1996"
    1997 "1997"
    1998 "1998"
    1999 "1999"
    2000 "2000"
    2001 "2001"
    2002 "2002"
    2003 "2003"
    2004 "2004"
    2005 "2005"
    2006 "2006"
    2007 "2007"
    2008 "2008"
    2009 "2009"
    2010 "2010"
    2011 "2011"
    2012 "2012"
    2013 "2013"
    2014 "2014"
    2015 "2015"
    2016 "2016"
    2017 "2017"
    /
 H0007100
    0 "NO"
    1 "YES"
    /
 H0008600
    0 "NO"
    1 "YES"
    /
 H0013301
    0 "0"
    1 "1 TO 4"
    5 "5 TO 9"
    10 "10 TO 14"
    15 "15 TO 19"
    20 "20 TO 24"
    /
 H0013400
    0 "Rarely/None of the time/1 Day"
    1 "Some/A little of the time/1-2 Days"
    2 "Occasionally/Moderate amount of the time/3-4 Days"
    3 "Most/All of the time/5-7 Days"
    /
 H0013401
    0 "Rarely/None of the time/1 Day"
    1 "Some/A little of the time/1-2 Days"
    2 "Occasionally/Moderate amount of the time/3-4 Days"
    3 "Most/All of the time/5-7 Days"
    /
 H0013402
    0 "Rarely/None of the time/1 Day"
    1 "Some/A little of the time/1-2 Days"
    2 "Occasionally/Moderate amount of the time/3-4 Days"
    3 "Most/All of the time/5-7 Days"
    /
 H0013403
    0 "Rarely/None of the time/1 Day"
    1 "Some/A little of the time/1-2 Days"
    2 "Occasionally/Moderate amount of the time/3-4 Days"
    3 "Most/All of the time/5-7 Days"
    /
 H0013404
    0 "Rarely/None of the time/1 Day"
    1 "Some/A little of the time/1-2 Days"
    2 "Occasionally/Moderate amount of the time/3-4 Days"
    3 "Most/All of the time/5-7 Days"
    /
 H0013405
    0 "Rarely/None of the time/1 Day"
    1 "Some/A little of the time/1-2 Days"
    2 "Occasionally/Moderate amount of the time/3-4 Days"
    3 "Most/All of the time/5-7 Days"
    /
 H0013406
    0 "Rarely/None of the time/1 Day"
    1 "Some/A little of the time/1-2 Days"
    2 "Occasionally/Moderate amount of the time/3-4 Days"
    3 "Most/All of the time/5-7 Days"
    /
 H0013407
    0 "Rarely/None of the time/1 Day"
    1 "Some/A little of the time/1-2 Days"
    2 "Occasionally/Moderate amount of the time/3-4 Days"
    3 "Most/All of the time/5-7 Days"
    /
 H0013408
    0 "Rarely/None of the time/1 Day"
    1 "Some/A little of the time/1-2 Days"
    2 "Occasionally/Moderate amount of the time/3-4 Days"
    3 "Most/All of the time/5-7 Days"
    /
 H0016400
    0 "NO"
    1 "YES"
    /
 H0016500
    0 "NO"
    1 "YES"
    /
 H0016700
    1 "All the time"
    2 "Most of the time"
    3 "A good bit of the time"
    4 "Some of the time"
    5 "A little of the time"
    6 "None of the time"
    /
 H0016800
    1 "All the time"
    2 "Most of the time"
    3 "A good bit of the time"
    4 "Some of the time"
    5 "A little of the time"
    6 "None of the time"
    /
 H0016900
    1 "All the time"
    2 "Most of the time"
    3 "A good bit of the time"
    4 "Some of the time"
    5 "A little of the time"
    6 "None of the time"
    /
 H0017000
    1 "All the time"
    2 "Most of the time"
    3 "A good bit of the time"
    4 "Some of the time"
    5 "A little of the time"
    6 "None of the time"
    /
 H0020800
    0 "NO"
    1 "YES"
    /
 H0020900
    1 "1: January"
    2 "2: February"
    3 "3: March"
    4 "4: April"
    5 "5: May"
    6 "6: June"
    7 "7: July"
    8 "8: August"
    9 "9: September"
    10 "10: October"
    11 "11: November"
    12 "12: December"
    /
 H0020901
    0 "0 TO 1996: <= 1996"
    1997 "1997"
    1998 "1998"
    1999 "1999"
    2000 "2000"
    2001 "2001"
    2002 "2002"
    2003 "2003"
    2004 "2004"
    2005 "2005"
    2006 "2006"
    2007 "2007"
    2008 "2008"
    2009 "2009"
    2010 "2010"
    2011 "2011"
    2012 "2012"
    2013 "2013"
    2014 "2014"
    2015 "2015"
    2016 "2016"
    2017 "2017"
    /
 H0021000
    0 "NO"
    1 "YES"
    /
 H0021100
    0 "0: 0  CONDITION DOES NOT APPLY"
    1 "1: 1  CONDITION APPLIES"
    /
 H0021200
    0 "NO"
    1 "YES"
    /
 H0021300
    1 "1: January"
    2 "2: February"
    3 "3: March"
    4 "4: April"
    5 "5: May"
    6 "6: June"
    7 "7: July"
    8 "8: August"
    9 "9: September"
    10 "10: October"
    11 "11: November"
    12 "12: December"
    /
 H0021301
    0 "0 TO 1996: <= 1996"
    1997 "1997"
    1998 "1998"
    1999 "1999"
    2000 "2000"
    2001 "2001"
    2002 "2002"
    2003 "2003"
    2004 "2004"
    2005 "2005"
    2006 "2006"
    2007 "2007"
    2008 "2008"
    2009 "2009"
    2010 "2010"
    2011 "2011"
    2012 "2012"
    2013 "2013"
    2014 "2014"
    2015 "2015"
    2016 "2016"
    2017 "2017"
    /
 H0021400
    0 "NO"
    1 "YES"
    /
 R0144600
    0 "0: 0 NO HEALTH LIMITATION"
    10 "10 TO 9999: 0010 THRU  9999 ICD-9 HEALTH CODE"
    10010 "10010 TO 10829: 10010 THRU 10829 ICD-9 'V' CODE"
    11800 "11800 TO 11999: 11800 THRU 11999 ICD-9 'E' CODE"
    12800 "12800 TO 12997: 12800 THRU 12997 ICD-9 'M' CODE"
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
 R3894900
    0 "RARELY/NONE OF THE TIME/1 DAY"
    1 "SOME/A LITTLE OF THE TIME/1-2 DAYS"
    2 "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS"
    3 "MOST/ALL OF THE TIME/5-7 DAYS"
    /
 R3895000
    0 "RARELY/NONE OF THE TIME/1 DAY"
    1 "SOME/A LITTLE OF THE TIME/1-2 DAYS"
    2 "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS"
    3 "MOST/ALL OF THE TIME/5-7 DAYS"
    /
 R3895100
    0 "RARELY/NONE OF THE TIME/1 DAY"
    1 "SOME/A LITTLE OF THE TIME/1-2 DAYS"
    2 "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS"
    3 "MOST/ALL OF THE TIME/5-7 DAYS"
    /
 R3895200
    0 "RARELY/NONE OF THE TIME/1 DAY"
    1 "SOME/A LITTLE OF THE TIME/1-2 DAYS"
    2 "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS"
    3 "MOST/ALL OF THE TIME/5-7 DAYS"
    /
 R3895300
    0 "RARELY/NONE OF THE TIME/1 DAY"
    1 "SOME/A LITTLE OF THE TIME/1-2 DAYS"
    2 "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS"
    3 "MOST/ALL OF THE TIME/5-7 DAYS"
    /
 R3895400
    0 "RARELY/NONE OF THE TIME/1 DAY"
    1 "SOME/A LITTLE OF THE TIME/1-2 DAYS"
    2 "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS"
    3 "MOST/ALL OF THE TIME/5-7 DAYS"
    /
 R3895500
    0 "RARELY/NONE OF THE TIME/1 DAY"
    1 "SOME/A LITTLE OF THE TIME/1-2 DAYS"
    2 "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS"
    3 "MOST/ALL OF THE TIME/5-7 DAYS"
    /
 R3895600
    0 "RARELY/NONE OF THE TIME/1 DAY"
    1 "SOME/A LITTLE OF THE TIME/1-2 DAYS"
    2 "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS"
    3 "MOST/ALL OF THE TIME/5-7 DAYS"
    /
 R3895700
    0 "RARELY/NONE OF THE TIME/1 DAY"
    1 "SOME/A LITTLE OF THE TIME/1-2 DAYS"
    2 "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS"
    3 "MOST/ALL OF THE TIME/5-7 DAYS"
    /
 R3895800
    0 "RARELY/NONE OF THE TIME/1 DAY"
    1 "SOME/A LITTLE OF THE TIME/1-2 DAYS"
    2 "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS"
    3 "MOST/ALL OF THE TIME/5-7 DAYS"
    /
 R3895900
    0 "RARELY/NONE OF THE TIME/1 DAY"
    1 "SOME/A LITTLE OF THE TIME/1-2 DAYS"
    2 "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS"
    3 "MOST/ALL OF THE TIME/5-7 DAYS"
    /
 R3896000
    0 "RARELY/NONE OF THE TIME/1 DAY"
    1 "SOME/A LITTLE OF THE TIME/1-2 DAYS"
    2 "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS"
    3 "MOST/ALL OF THE TIME/5-7 DAYS"
    /
 R3896100
    0 "RARELY/NONE OF THE TIME/1 DAY"
    1 "SOME/A LITTLE OF THE TIME/1-2 DAYS"
    2 "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS"
    3 "MOST/ALL OF THE TIME/5-7 DAYS"
    /
 R3896200
    0 "RARELY/NONE OF THE TIME/1 DAY"
    1 "SOME/A LITTLE OF THE TIME/1-2 DAYS"
    2 "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS"
    3 "MOST/ALL OF THE TIME/5-7 DAYS"
    /
 R3896300
    0 "RARELY/NONE OF THE TIME/1 DAY"
    1 "SOME/A LITTLE OF THE TIME/1-2 DAYS"
    2 "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS"
    3 "MOST/ALL OF THE TIME/5-7 DAYS"
    /
 R3896400
    0 "RARELY/NONE OF THE TIME/1 DAY"
    1 "SOME/A LITTLE OF THE TIME/1-2 DAYS"
    2 "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS"
    3 "MOST/ALL OF THE TIME/5-7 DAYS"
    /
 R3896500
    0 "RARELY/NONE OF THE TIME/1 DAY"
    1 "SOME/A LITTLE OF THE TIME/1-2 DAYS"
    2 "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS"
    3 "MOST/ALL OF THE TIME/5-7 DAYS"
    /
 R3896600
    0 "RARELY/NONE OF THE TIME/1 DAY"
    1 "SOME/A LITTLE OF THE TIME/1-2 DAYS"
    2 "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS"
    3 "MOST/ALL OF THE TIME/5-7 DAYS"
    /
 R3896700
    0 "RARELY/NONE OF THE TIME/1 DAY"
    1 "SOME/A LITTLE OF THE TIME/1-2 DAYS"
    2 "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS"
    3 "MOST/ALL OF THE TIME/5-7 DAYS"
    /
 R3896800
    0 "RARELY/NONE OF THE TIME/1 DAY"
    1 "SOME/A LITTLE OF THE TIME/1-2 DAYS"
    2 "OCCASIONALLY/MODERATE AMT OF THE TIME/3-4 DAYS"
    3 "MOST/ALL OF THE TIME/5-7 DAYS"
    /
 R3896810
    0 "0"
    1 "1 TO 9"
    10 "10 TO 19"
    20 "20 TO 29"
    30 "30 TO 39"
    40 "40 TO 49"
    50 "50 TO 59"
    60 "60 TO 69"
    /
 R3896811
    0 "0"
    1 "1 TO 4"
    5 "5 TO 9"
    10 "10 TO 14"
    15 "15 TO 19"
    20 "20 TO 24"
    25 "25 TO 29"
    /
 R3896820
    0 "0"
    1 "1 TO 4"
    5 "5 TO 9"
    10 "10 TO 14"
    15 "15 TO 19"
    20 "20 TO 24"
    25 "25 TO 29"
    /
 R4978300
    0 "Rarely/None of the Time/1 Day"
    1 "Some/A Little of the Time/1-2 Days"
    2 "Occasionally/Moderate Amount of the Time/3-4 Days"
    3 "Most/All of the Time/5-7 Days"
    /
 R4978400
    0 "Rarely/None of the Time/1 Day"
    1 "Some/A Little of the Time/1-2 Days"
    2 "Occasionally/Moderate Amount of the Time/3-4 Days"
    3 "Most/All of the Time/5-7 Days"
    /
 R4978500
    0 "Rarely/None of the Time/1 Day"
    1 "Some/A Little of the Time/1-2 Days"
    2 "Occasionally/Moderate Amount of the Time/3-4 Days"
    3 "Most/All of the Time/5-7 Days"
    /
 R4978600
    0 "Rarely/None of the Time/1 Day"
    1 "Some/A Little of the Time/1-2 Days"
    2 "Occasionally/Moderate Amount of the Time/3-4 Days"
    3 "Most/All of the Time/5-7 Days"
    /
 R4978700
    0 "Rarely/None of the Time/1 Day"
    1 "Some/A Little of the Time/1-2 Days"
    2 "Occasionally/Moderate Amount of the Time/3-4 Days"
    3 "Most/All of the Time/5-7 Days"
    /
 R4978800
    0 "Rarely/None of the Time/1 Day"
    1 "Some/A Little of the Time/1-2 Days"
    2 "Occasionally/Moderate Amount of the Time/3-4 Days"
    3 "Most/All of the Time/5-7 Days"
    /
 R4978900
    0 "Rarely/None of the Time/1 Day"
    1 "Some/A Little of the Time/1-2 Days"
    2 "Occasionally/Moderate Amount of the Time/3-4 Days"
    3 "Most/All of the Time/5-7 Days"
    /
 R4978910
    0 "0"
    1 "1 TO 4"
    5 "5 TO 9"
    10 "10 TO 14"
    15 "15 TO 19"
    20 "20 TO 24"
    25 "25 TO 29"
    /
 T5006600
    1 "1 (not at all satisfied)"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7 (completely satisfied)"
    /
 T5740700
    1 "1 (not at all satisfied)"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7 (completely satisfied)"
    /
.
/* Crosswalk for Reference number & Question name
 * Uncomment and edit this RENAME VARIABLES statement to rename variables for ease of use.
 * This command does not guarantee uniqueness
 */  /* *start* */

* RENAME VARIABLES
  (H0000300 = H40_CESD_000001_XRND)   /* H40-CESD~000001 */
  (H0000400 = H40_CESD_000002_XRND)   /* H40-CESD~000002 */
  (H0000500 = H40_CESD_000003_XRND)   /* H40-CESD~000003 */
  (H0000600 = H40_CESD_000004_XRND)   /* H40-CESD~000004 */
  (H0000700 = H40_CESD_000005_XRND)   /* H40-CESD~000005 */
  (H0000800 = H40_CESD_000006_XRND)   /* H40-CESD~000006 */
  (H0000900 = H40_CESD_000007_XRND)   /* H40-CESD~000007 */
  (H0001000 = H40_CESD_000008_XRND)   /* H40-CESD~000008 */
  (H0001100 = H40_CESD_000009_XRND)   /* H40-CESD~000009 */
  (H0001101 = H40_CESD_SCORE_7_ITEM_XRND)   /* H40-CESD_SCORE_7_ITEM */
  (H0003900 = H40_SF12_5_XRND)   /* H40-SF12-5 */
  (H0004000 = H40_SF12_5B_XRND)   /* H40-SF12-5B */
  (H0004500 = H40_SF12_8_XRND)   /* H40-SF12-8 */
  (H0006900 = H40_CHRC_8_XRND)   /* H40-CHRC-8 */
  (H0007000 = H40_CHRC_8A_M_XRND)   /* H40-CHRC-8A~M */
  (H0007001 = H40_CHRC_8A_Y_XRND)   /* H40-CHRC-8A~Y */
  (H0007100 = H40_CHRC_8B_XRND)   /* H40-CHRC-8B */
  (H0008600 = H40_CHRC_10K_XRND)   /* H40-CHRC-10K */
  (H0013301 = H50_CESD_SCORE_7_ITEM_XRND)   /* H50-CESD_SCORE_7_ITEM */
  (H0013400 = H50CESD_000001_XRND)   /* H50CESD~000001 */
  (H0013401 = H50CESD_000002_XRND)   /* H50CESD~000002 */
  (H0013402 = H50CESD_000003_XRND)   /* H50CESD~000003 */
  (H0013403 = H50CESD_000004_XRND)   /* H50CESD~000004 */
  (H0013404 = H50CESD_000005_XRND)   /* H50CESD~000005 */
  (H0013405 = H50CESD_000006_XRND)   /* H50CESD~000006 */
  (H0013406 = H50CESD_000007_XRND)   /* H50CESD~000007 */
  (H0013407 = H50CESD_000008_XRND)   /* H50CESD~000008 */
  (H0013408 = H50CESD_000009_XRND)   /* H50CESD~000009 */
  (H0016400 = H50SF12_5_XRND)   /* H50SF12-5 */
  (H0016500 = H50SF12_5B_XRND)   /* H50SF12-5B */
  (H0016700 = H50SF12_7_XRND)   /* H50SF12-7 */
  (H0016800 = H50SF12_7B_XRND)   /* H50SF12-7B */
  (H0016900 = H50SF12_7C_XRND)   /* H50SF12-7C */
  (H0017000 = H50SF12_8_XRND)   /* H50SF12-8 */
  (H0020800 = H50CHRC_7B_XRND)   /* H50CHRC-7B */
  (H0020900 = H50CHRC_7C_M_XRND)   /* H50CHRC-7C~M */
  (H0020901 = H50CHRC_7C_Y_XRND)   /* H50CHRC-7C~Y */
  (H0021000 = H50CHRC_7D_XRND)   /* H50CHRC-7D */
  (H0021100 = H50CHRC_CHK6_XRND) 
  (H0021200 = H50CHRC_8_XRND)   /* H50CHRC-8 */
  (H0021300 = H50CHRC_8A_M_XRND)   /* H50CHRC-8A~M */
  (H0021301 = H50CHRC_8A_Y_XRND)   /* H50CHRC-8A~Y */
  (H0021400 = H50CHRC_8B_XRND)   /* H50CHRC-8B */
  (R0000100 = CASEID_1979) 
  (R0144600 = HEALTH_CODE_1979) 
  (R0173600 = SAMPLE_ID_1979) 
  (R3894900 = CESD_000000_1992)   /* CESD~000000 */
  (R3895000 = CESD_000001_1992)   /* CESD~000001 */
  (R3895100 = CESD_000002_1992)   /* CESD~000002 */
  (R3895200 = CESD_000002A_1992)   /* CESD~000002A */
  (R3895300 = CESD_000003_1992)   /* CESD~000003 */
  (R3895400 = CESD_000004_1992)   /* CESD~000004 */
  (R3895500 = CESD_000005_1992)   /* CESD~000005 */
  (R3895600 = CESD_000005A_1992)   /* CESD~000005A */
  (R3895700 = CESD_000005B_1992)   /* CESD~000005B */
  (R3895800 = CESD_000005C_1992)   /* CESD~000005C */
  (R3895900 = CESD_000006_1992)   /* CESD~000006 */
  (R3896000 = CESD_000006A_1992)   /* CESD~000006A */
  (R3896100 = CESD_000006B_1992)   /* CESD~000006B */
  (R3896200 = CESD_000007_1992)   /* CESD~000007 */
  (R3896300 = CESD_000007A_1992)   /* CESD~000007A */
  (R3896400 = CESD_000007B_1992)   /* CESD~000007B */
  (R3896500 = CESD_000007C_1992)   /* CESD~000007C */
  (R3896600 = CESD_000008_1992)   /* CESD~000008 */
  (R3896700 = CESD_000008A_1992)   /* CESD~000008A */
  (R3896800 = CESD_000009_1992)   /* CESD~000009 */
  (R3896810 = CESD_SCORE_20_ITEM_1992) 
  (R3896811 = CESD_FLAG_1992) 
  (R3896820 = CESD_SCORE_7_ITEM_1992) 
  (R4978300 = CESD_000001_1994)   /* CESD~000001 */
  (R4978400 = CESD_000003_1994)   /* CESD~000003 */
  (R4978500 = CESD_000004_1994)   /* CESD~000004 */
  (R4978600 = CESD_000005_1994)   /* CESD~000005 */
  (R4978700 = CESD_000006_1994)   /* CESD~000006 */
  (R4978800 = CESD_000008_1994)   /* CESD~000008 */
  (R4978900 = CESD_000009_1994)   /* CESD~000009 */
  (R4978910 = CESD_SCORE_7_ITEM_1994) 
  (T5006600 = LIFE_SATISFACTION_2014)   /* LIFE-SATISFACTION */
  (T5740700 = LIFE_SATISFACTION_2016)   /* LIFE-SATISFACTION */
.
  /* *end* */

descriptives all.

*--- Tabulations using reference number variables.
*freq var=H0000300, 
  H0000400, 
  H0000500, 
  H0000600, 
  H0000700, 
  H0000800, 
  H0000900, 
  H0001000, 
  H0001100, 
  H0001101, 
  H0003900, 
  H0004000, 
  H0004500, 
  H0006900, 
  H0007000, 
  H0007001, 
  H0007100, 
  H0008600, 
  H0013301, 
  H0013400, 
  H0013401, 
  H0013402, 
  H0013403, 
  H0013404, 
  H0013405, 
  H0013406, 
  H0013407, 
  H0013408, 
  H0016400, 
  H0016500, 
  H0016700, 
  H0016800, 
  H0016900, 
  H0017000, 
  H0020800, 
  H0020900, 
  H0020901, 
  H0021000, 
  H0021100, 
  H0021200, 
  H0021300, 
  H0021301, 
  H0021400, 
  R0000100, 
  R0144600, 
  R0173600, 
  R3894900, 
  R3895000, 
  R3895100, 
  R3895200, 
  R3895300, 
  R3895400, 
  R3895500, 
  R3895600, 
  R3895700, 
  R3895800, 
  R3895900, 
  R3896000, 
  R3896100, 
  R3896200, 
  R3896300, 
  R3896400, 
  R3896500, 
  R3896600, 
  R3896700, 
  R3896800, 
  R3896810, 
  R3896811, 
  R3896820, 
  R4978300, 
  R4978400, 
  R4978500, 
  R4978600, 
  R4978700, 
  R4978800, 
  R4978900, 
  R4978910, 
  T5006600, 
  T5740700.

*--- Tabulations using qname variables.
*freq var=H40_CESD_000001_XRND, 
  H40_CESD_000002_XRND, 
  H40_CESD_000003_XRND, 
  H40_CESD_000004_XRND, 
  H40_CESD_000005_XRND, 
  H40_CESD_000006_XRND, 
  H40_CESD_000007_XRND, 
  H40_CESD_000008_XRND, 
  H40_CESD_000009_XRND, 
  H40_CESD_SCORE_7_ITEM_XRND, 
  H40_SF12_5_XRND, 
  H40_SF12_5B_XRND, 
  H40_SF12_8_XRND, 
  H40_CHRC_8_XRND, 
  H40_CHRC_8A_M_XRND, 
  H40_CHRC_8A_Y_XRND, 
  H40_CHRC_8B_XRND, 
  H40_CHRC_10K_XRND, 
  H50_CESD_SCORE_7_ITEM_XRND, 
  H50CESD_000001_XRND, 
  H50CESD_000002_XRND, 
  H50CESD_000003_XRND, 
  H50CESD_000004_XRND, 
  H50CESD_000005_XRND, 
  H50CESD_000006_XRND, 
  H50CESD_000007_XRND, 
  H50CESD_000008_XRND, 
  H50CESD_000009_XRND, 
  H50SF12_5_XRND, 
  H50SF12_5B_XRND, 
  H50SF12_7_XRND, 
  H50SF12_7B_XRND, 
  H50SF12_7C_XRND, 
  H50SF12_8_XRND, 
  H50CHRC_7B_XRND, 
  H50CHRC_7C_M_XRND, 
  H50CHRC_7C_Y_XRND, 
  H50CHRC_7D_XRND, 
  H50CHRC_CHK6_XRND, 
  H50CHRC_8_XRND, 
  H50CHRC_8A_M_XRND, 
  H50CHRC_8A_Y_XRND, 
  H50CHRC_8B_XRND, 
  CASEID_1979, 
  HEALTH_CODE_1979, 
  SAMPLE_ID_1979, 
  CESD_000000_1992, 
  CESD_000001_1992, 
  CESD_000002_1992, 
  CESD_000002A_1992, 
  CESD_000003_1992, 
  CESD_000004_1992, 
  CESD_000005_1992, 
  CESD_000005A_1992, 
  CESD_000005B_1992, 
  CESD_000005C_1992, 
  CESD_000006_1992, 
  CESD_000006A_1992, 
  CESD_000006B_1992, 
  CESD_000007_1992, 
  CESD_000007A_1992, 
  CESD_000007B_1992, 
  CESD_000007C_1992, 
  CESD_000008_1992, 
  CESD_000008A_1992, 
  CESD_000009_1992, 
  CESD_SCORE_20_ITEM_1992, 
  CESD_FLAG_1992, 
  CESD_SCORE_7_ITEM_1992, 
  CESD_000001_1994, 
  CESD_000003_1994, 
  CESD_000004_1994, 
  CESD_000005_1994, 
  CESD_000006_1994, 
  CESD_000008_1994, 
  CESD_000009_1994, 
  CESD_SCORE_7_ITEM_1994, 
  LIFE_SATISFACTION_2014, 
  LIFE_SATISFACTION_2016.
