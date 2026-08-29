> setwd("~/Documents/R Projects/ecob2000_lecture1")
> load("d_HHP2020_24.RData")
> #glimpse(d_HHP2020_24) try this later
  > d_HHP2020_24[1:10,1:6]
Age Gender    Education Mar_Stat income_midpoint  Race
1   34 female college grad  Married           62500 white
2   65   male some college divorced           30000 white
3   44 female college grad  Married          225000 other
4   56   male some college divorced           12500 white
5   57 female   adv degree    never           62500 white
6   44 female   adv degree  Married          125000 white
7   37 female   adv degree  Married           62500 Black
8   59   male college grad  Married           82500 white
9   51 female        lt hs    never           12500 Black
10  29 female    assoc deg  Married           40000 white
> attach(d_HHP2020_24)
> summary(d_HHP2020_24)
Age           Gender              Education     
Min.   :17.00   male  :410536   lt hs       :  6787  
1st Qu.:39.00   female:566464   some hs     : 14934  
Median :52.00   trans :  1989   high school :122541  
Mean   :52.25   other :  5801   some college:210698  
3rd Qu.:65.00                   assoc deg   :103575  
Max.   :88.00                   college grad:279400  
adv degree  :246855  
Mar_Stat      income_midpoint     Race       
Married  :556611   Min.   : 12500   white:806002  
widowed  : 54162   1st Qu.: 40000   Black: 80846  
divorced :152705   Median : 82500   Asian: 48885  
separated: 17850   Mean   : 95461   other: 49057  
never    :195037   3rd Qu.:125000                 
NAs      :  8425   Max.   :225000                 
NAs    :187771                 
Hispanic      Number_people_HH Number_kids_HH 
not Hispanic:895979   Min.   : 1.000   Min.   :0.000  
Hispanic    : 88811   1st Qu.: 2.000   1st Qu.:0.000  
Median : 2.000   Median :0.000  
Mean   : 2.715   Mean   :0.623  
3rd Qu.: 4.000   3rd Qu.:1.000  
Max.   :10.000   Max.   :5.000  

Number_adults_HH                    private_health_ins
Min.   : 1.000   0                           : 74413  
1st Qu.: 2.000   has private health insurance:607599  
Median : 2.000   no private health insurance :149384  
Mean   : 2.092   NAs                         :153394  
3rd Qu.: 2.000                                        
Max.   :10.000                                        

public_health_ins 
0                          : 74413  
has public health insurance:302958  
no public health insurance :425600  
NAs                        :181819  



work_kind     
employed by govt                : 96450  
employed by private co          :320047  
employed by nonprofit or charity: 74364  
self employed                   : 68547  
work for family business        : 11698  
NAs                             :413684  

workloss           DOWN       
yes recent household loss of work:171404   Min.   :1.000   
no                               :794667   1st Qu.:1.000   
NAs                              : 18719   Median :1.000   
Mean   :1.634   
3rd Qu.:2.000   
Max.   :4.000   
NAs    :108234  
ANXIOUS           WORRY           INTEREST     
Min.   :1.000    Min.   :1.000    Min.   :1.000   
1st Qu.:1.000    1st Qu.:1.000    1st Qu.:1.000   
Median :2.000    Median :1.000    Median :1.000   
Mean   :1.906    Mean   :1.718    Mean   :1.649   
3rd Qu.:2.000    3rd Qu.:2.000    3rd Qu.:2.000   
Max.   :4.000    Max.   :4.000    Max.   :4.000   
NAs    :106951   NAs    :108419   NAs    :108683  
YEAR         Begin_Date             K4SUM       
Min.   :20.00   Min.   :2020-04-23   Min.   : 4.000  
1st Qu.:20.00   1st Qu.:2020-12-09   1st Qu.: 4.000  
Median :22.00   Median :2022-04-27   Median : 6.000  
Mean   :21.73   Mean   :2022-05-03   Mean   : 6.908  
3rd Qu.:23.00   3rd Qu.:2023-08-23   3rd Qu.: 8.000  
Max.   :24.00   Max.   :2024-07-23   Max.   :16.000  
NAs    :111831  
income_midpoint_factor
125000 :145006        
62500  :134183        
82500  :112727        
225000 : 92900        
40000  : 85421        
(Other):226782        
NAs    :187771        
> summary(Age[Gender == "female"])
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
17.00   39.00   52.00   51.62   64.00   88.00 
> source("~/Documents/R Projects/ecob2000_lecture1/ecob2000_lecture_1_household_pulse_ishika_nawar.R")
The following objects are masked from d_HHP2020_24 (pos = 3):
  
  Age, ANXIOUS, Begin_Date, DOWN, Education, Gender,
Hispanic, income_midpoint, income_midpoint_factor,
INTEREST, K4SUM, Mar_Stat, Number_adults_HH,
Number_kids_HH, Number_people_HH, private_health_ins,
public_health_ins, Race, work_kind, workloss, WORRY,
YEAR
> summary(Age[Gender == "male"])
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
17.00   40.00   54.00   53.29   67.00   88.00 
> summary(Age[Gender == "trans"])
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
17.00   26.00   31.00   36.02   41.00   88.00 
> summary(Age[Gender == "other"])
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
17.00   31.00   43.00   45.88   59.00   88.00 
> mean(Age[Gender == "female"])
[1] 51.61668
> sd(Age[Gender == "female"])
[1] 15.59165
> 
  > mean(Age[Gender == "male"])
[1] 53.28593
> sd(Age[Gender == "male"])
[1] 16.28551
> 