load("d_HHP2020_24.RData")
#glimpse(d_HHP2020_24) try this later
d_HHP2020_24[1:10,1:6]
##    Age Gender    Education Mar_Stat income_midpoint  Race
## 1   34 female college grad  Married           62500 white
## 2   65   male some college divorced           30000 white
## 3   44 female college grad  Married          225000 other
## 4   56   male some college divorced           12500 white
## 5   57 female   adv degree    never           62500 white
## 6   44 female   adv degree  Married          125000 white
## 7   37 female   adv degree  Married           62500 Black
## 8   59   male college grad  Married           82500 white
## 9   51 female        lt hs    never           12500 Black
## 10  29 female    assoc deg  Married           40000 white
attach(d_HHP2020_24)
summary(d_HHP2020_24)
##       Age           Gender              Education           Mar_Stat     
##  Min.   :17.00   male  :410536   lt hs       :  6787   Married  :556611  
##  1st Qu.:39.00   female:566464   some hs     : 14934   widowed  : 54162  
##  Median :52.00   trans :  1989   high school :122541   divorced :152705  
##  Mean   :52.25   other :  5801   some college:210698   separated: 17850  
##  3rd Qu.:65.00                   assoc deg   :103575   never    :195037  
##  Max.   :88.00                   college grad:279400   NA's     :  8425  
##                                  adv degree  :246855                     
##  income_midpoint     Race                Hispanic      Number_people_HH
##  Min.   : 12500   white:806002   not Hispanic:895979   Min.   : 1.000  
##  1st Qu.: 40000   Black: 80846   Hispanic    : 88811   1st Qu.: 2.000  
##  Median : 82500   Asian: 48885                         Median : 2.000  
##  Mean   : 95461   other: 49057                         Mean   : 2.715  
##  3rd Qu.:125000                                        3rd Qu.: 4.000  
##  Max.   :225000                                        Max.   :10.000  
##  NA's   :187771                                                        
##  Number_kids_HH  Number_adults_HH                    private_health_ins
##  Min.   :0.000   Min.   : 1.000   0                           : 74413  
##  1st Qu.:0.000   1st Qu.: 2.000   has private health insurance:607599  
##  Median :0.000   Median : 2.000   no private health insurance :149384  
##  Mean   :0.623   Mean   : 2.092   NA's                        :153394  
##  3rd Qu.:1.000   3rd Qu.: 2.000                                        
##  Max.   :5.000   Max.   :10.000                                        
##                                                                        
##                    public_health_ins                             work_kind     
##  0                          : 74413   employed by govt                : 96450  
##  has public health insurance:302958   employed by private co          :320047  
##  no public health insurance :425600   employed by nonprofit or charity: 74364  
##  NA's                       :181819   self employed                   : 68547  
##                                       work for family business        : 11698  
##                                       NA's                            :413684  
##                                                                                
##                               workloss           DOWN           ANXIOUS      
##  yes recent household loss of work:171404   Min.   :1.00     Min.   :1.00    
##  no                               :794667   1st Qu.:1.00     1st Qu.:1.00    
##  NA's                             : 18719   Median :1.00     Median :2.00    
##                                             Mean   :1.63     Mean   :1.91    
##                                             3rd Qu.:2.00     3rd Qu.:2.00    
##                                             Max.   :4.00     Max.   :4.00    
##                                             NA's   :108234   NA's   :106951  
##      WORRY           INTEREST           YEAR         Begin_Date        
##  Min.   :1.00     Min.   :1.00     Min.   :20.00   Min.   :2020-04-23  
##  1st Qu.:1.00     1st Qu.:1.00     1st Qu.:20.00   1st Qu.:2020-12-09  
##  Median :1.00     Median :1.00     Median :22.00   Median :2022-04-27  
##  Mean   :1.72     Mean   :1.65     Mean   :21.73   Mean   :2022-05-03  
##  3rd Qu.:2.00     3rd Qu.:2.00     3rd Qu.:23.00   3rd Qu.:2023-08-23  
##  Max.   :4.00     Max.   :4.00     Max.   :24.00   Max.   :2024-07-23  
##  NA's   :108419   NA's   :108683                                       
##      K4SUM        income_midpoint_factor
##  Min.   : 4.00    125000 :145006        
##  1st Qu.: 4.00    62500  :134183        
##  Median : 6.00    82500  :112727        
##  Mean   : 6.91    225000 : 92900        
##  3rd Qu.: 8.00    40000  : 85421        
##  Max.   :16.00    (Other):226782        
##  NA's   :111831   NA's   :187771
summary(Age[Gender == "female"])
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##   17.00   39.00   52.00   51.62   64.00   88.00

