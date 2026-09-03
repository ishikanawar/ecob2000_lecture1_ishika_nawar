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
> hist(Age[ (Age > 80) ])
mean(Age[ (Gender == "female") & (Age < 88) ]) 
## [1] 51.51615
summary(Education)
##        lt hs      some hs  high school some college    assoc deg college grad 
##         6787        14934       122541       210698       103575       279400 
##   adv degree 
##       246855
summary(State)
##              Alabama               Alaska              Arizona 
##                13230                15970                26059 
##             Arkansas           California             Colorado 
##                12931                71958                24746 
##          Connecticut             Delaware District of Columbia 
##                16499                11555                13008 
##              Florida              Georgia               Hawaii 
##                33825                23538                10694 
##                Idaho             Illinois              Indiana 
##                18517                22348                17907 
##                 Iowa               Kansas             Kentucky 
##                15547                17328                14104 
##            Louisiana                Maine             Maryland 
##                12481                10524                22276 
##        Massachusetts             Michigan            Minnesota 
##                26236                26479                21160 
##          Mississippi             Missouri              Montana 
##                10391                16868                11519 
##             Nebraska               Nevada        New Hampshire 
##                15248                15658                15337 
##           New Jersey           New Mexico             New York 
##                18603                17666                18996 
##       North Carolina         North Dakota                 Ohio 
##                17425                 8649                16312 
##             Oklahoma               Oregon         Pennsylvania 
##                15025                24682                24969 
##         Rhode Island       South Carolina         South Dakota 
##                 9783                14910                 9936 
##            Tennessee                Texas                 Utah 
##                16977                49059                25831 
##              Vermont             Virginia           Washington 
##                10607                25432                37615 
##        West Virginia            Wisconsin              Wyoming 
##                11142                17272                 9958
d_HHP2020_24 %>%
  group_by(State) %>%
  summarize(
    avg = mean(Age),
    stdev = sd(Age), 
    n_obs = n()
  ) 
## # A tibble: 51 × 4
##    State                  avg stdev n_obs
##    <fct>                <dbl> <dbl> <int>
##  1 Alabama               52.5  16.0 13230
##  2 Alaska                50.9  15.8 15970
##  3 Arizona               54.4  16.4 26059
##  4 Arkansas              52.2  16.0 12931
##  5 California            52.0  15.9 71958
##  6 Colorado              51.5  16.1 24746
##  7 Connecticut           52.7  15.8 16499
##  8 Delaware              55.5  16.0 11555
##  9 District of Columbia  48.4  15.5 13008
## 10 Florida               55.7  16.0 33825
## # ℹ 41 more rows
d_HHP2020_24 %>%
  group_by(State) %>%
  summarize(
    age90th = quantile(Age,probs = 0.9),
    age10th = quantile(Age,probs = 0.1), 
    n_obs = n()
  ) %>%
  arrange(desc(age90th), .by_group = TRUE)
## # A tibble: 51 × 4
##    State          age90th age10th n_obs
##    <fct>            <dbl>   <dbl> <int>
##  1 Florida             76      33 33825
##  2 Arizona             75      31 26059
##  3 Delaware            75      33 11555
##  4 Hawaii              75      33 10694
##  5 New Mexico          75      33 17666
##  6 Maine               74      32 10524
##  7 Montana             74      31 11519
##  8 Nevada              74      32 15658
##  9 New Hampshire       74      32 15337
## 10 South Carolina      74      31 14910
## # ℹ 41 more rows
table(Education,Gender)
##               Gender
## Education        male female  trans  other
##   lt hs          2847   3727     64    149
##   some hs        5752   9003     45    134
##   high school   48030  73467    243    801
##   some college  85218 123645    572   1263
##   assoc deg     37020  65834    145    576
##   college grad 122956 154321    564   1559
##   adv degree   108713 136467    356   1319
xtabs(~ Education + Gender)
##               Gender
## Education        male female  trans  other
##   lt hs          2847   3727     64    149
##   some hs        5752   9003     45    134
##   high school   48030  73467    243    801
##   some college  85218 123645    572   1263
##   assoc deg     37020  65834    145    576
##   college grad 122956 154321    564   1559
##   adv degree   108713 136467    356   1319
prop.table(table(Education,Gender))
##               Gender
## Education              male       female        trans        other
##   lt hs        2.890972e-03 3.784563e-03 6.498847e-05 1.513013e-04
##   some hs      5.840839e-03 9.142051e-03 4.569502e-05 1.360696e-04
##   high school  4.877182e-02 7.460169e-02 2.467531e-04 8.133714e-04
##   some college 8.653418e-02 1.255547e-01 5.808345e-04 1.282507e-03
##   assoc deg    3.759177e-02 6.685080e-02 1.472395e-04 5.848963e-04
##   college grad 1.248550e-01 1.567045e-01 5.727109e-04 1.583079e-03
##   adv degree   1.103921e-01 1.385747e-01 3.614984e-04 1.339372e-03

mean(Age[(Region == "Northeast")])
## [1] 52.48172
# alternatively
restrict1 <- as.logical((Region == "Northeast"))
dat_northeast <- subset(d_HHP2020_24, restrict1)

detach()
attach(dat_northeast)

mean(Age)
## [1] 52.48172


