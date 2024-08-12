############# Start - Include requisite packages  ############# 
library(robustHD)

library(stargazer)

library(Rmisc)

library(tidyverse)

library(foreign)

library(extraDistr)

library(tseries)

library(matrixStats)

library(DataCombine)

library(wCorr)

library(stringr)

library(Rcpp)

############# End - Include requisite packages ############# 


###################################################################################
############## Start - Read the NESL Data ########################################
###################################################################################



###################################################################################
# Read the files for 2017-2018
###################################################################################

Other_Parties_2018 <- read.csv( "Other Parties FY 2017-2018.csv")


Debt_2018 <- read.csv( "Submitter and Debt information FY 2017-2018.csv")

###################################################################################
# Read the files for 2018-2019
###################################################################################

Other_Parties_2019 <- read.csv( "Other Parties FY2018-2019.csv")


Security_2019 <- read.csv( "Security FY2018-2019.csv")


Debt_2019 <- read.csv( "Submitter and Debt Information FY2018-2019.csv")


###################################################################################
# Read the files for 2019-2020, and combine them into three files, one for debt, 
# one for security and one for other parties
###################################################################################

Debt_2020_1 <- read.csv( "Submitter and Debt Information FY 2019-2020 Part1.csv")

Debt_2020_2 <- read.csv( "Submitter and Debt Information FY 2019-2020 Part2.csv")

Debt_2020_3 <- read.csv( "Submitter and Debt Information FY 2019-2020 Part3.csv")

Debt_2020_4 <- read.csv( "Submitter and Debt Information FY 2019-2020 Part4.csv")

Debt_2020 <- rbind(Debt_2020_1, Debt_2020_2, Debt_2020_3, Debt_2020_4)

rm(Debt_2020_1, Debt_2020_2, Debt_2020_3, Debt_2020_4)


Other_Parties_2020_1 <- read.csv( "Other Parties FY2019-2020 Part1.csv")

Other_Parties_2020_2 <- read.csv( "Other Parties FY2019-2020 Part2.csv")

Other_Parties_2020_3 <- read.csv( "Other Parties FY2019-2020 Part3.csv")

Other_Parties_2020_4 <- read.csv( "Other Parties FY2019-2020 Part4.csv")

Other_Parties_2020_5 <- read.csv( "Other Parties FY2019-2020 Part5.csv")

Other_Parties_2020_6 <- read.csv( "Other Parties FY2019-2020 Part6.csv")

Other_Parties_2020_7 <- read.csv( "Other Parties FY2019-2020 Part7.csv")

Other_Parties_2020_8 <- read.csv( "Other Parties FY2019-2020 Part8.csv")

Other_Parties_2020_9 <- read.csv( "Other Parties FY2019-2020 Part9.csv")

Other_Parties_2020_10 <- read.csv( "Other Parties FY2019-2020 Part10.csv")

Other_Parties_2020 <- rbind(Other_Parties_2020_1, Other_Parties_2020_2, Other_Parties_2020_3, Other_Parties_2020_4, Other_Parties_2020_5,
                            Other_Parties_2020_6, Other_Parties_2020_7, Other_Parties_2020_8, Other_Parties_2020_9, Other_Parties_2020_10)

rm(Other_Parties_2020_1, Other_Parties_2020_2, Other_Parties_2020_3, Other_Parties_2020_4, Other_Parties_2020_5,
      Other_Parties_2020_6, Other_Parties_2020_7, Other_Parties_2020_8, Other_Parties_2020_9, Other_Parties_2020_10)


Security_2020_1 <- read.csv( "Security FY2019-2020 Part1.csv")

Security_2020_2 <- read.csv( "Security FY2019-2020 Part2.csv")

Security_2020_3 <- read.csv( "Security FY2019-2020 Part3.csv")

Security_2020_4 <- read.csv( "Security FY2019-2020 Part4.csv")

Security_2020_5 <- read.csv( "Security FY2019-2020 Part5.csv")

Security_2020_6 <- read.csv( "Security FY2019-2020 Part6.csv")

Security_2020_7 <- read.csv( "Security FY2019-2020 Part7.csv")

Security_2020 <- rbind(Security_2020_1, Security_2020_2, Security_2020_3, Security_2020_4, Security_2020_5, Security_2020_6, Security_2020_7)

rm(Security_2020_1, Security_2020_2, Security_2020_3, Security_2020_4, Security_2020_5, Security_2020_6, Security_2020_7)



###################################################################################
# Read the files for 2020-2021, and combine them into three files, one for debt, 
# one for security and one for other parties
###################################################################################


Debt_2021_1 <- read.csv( "Submitter and Debt Information FY2020-2021 Part1.csv")

Debt_2021_2 <- read.csv( "Submitter and Debt Information FY2020-2021 Part2.csv")

Debt_2021_3 <- read.csv( "Submitter and Debt Information FY2020-2021 Part3.csv")

Debt_2021_4 <- read.csv( "Submitter and Debt Information FY2020-2021 Part4.csv")

Debt_2021_5 <- read.csv( "Submitter and Debt Information FY2020-2021 Part5.csv")

Debt_2021_6 <- read.csv( "Submitter and Debt Information FY2020-2021 Part6.csv")

Debt_2021 <- rbind(Debt_2021_1, Debt_2021_2, Debt_2021_3, Debt_2021_4, Debt_2021_5, Debt_2021_6)

rm(Debt_2021_1, Debt_2021_2, Debt_2021_3, Debt_2021_4, Debt_2021_5, Debt_2021_6)


Other_Parties_2021_1 <- read.csv( "Other Parties FY2020-2021 Part1.csv")

Other_Parties_2021_2 <- read.csv( "Other Parties FY2020-2021 Part2.csv")

Other_Parties_2021_3 <- read.csv( "Other Parties FY2020-2021 Part3.csv")

Other_Parties_2021_4 <- read.csv( "Other Parties FY2020-2021 Part4.csv")

Other_Parties_2021_5 <- read.csv( "Other Parties FY2020-2021 Part5.csv")

Other_Parties_2021_6 <- read.csv( "Other Parties FY2020-2021 Part6.csv")

Other_Parties_2021_7 <- read.csv( "Other Parties FY2020-2021 Part7.csv")

Other_Parties_2021_8 <- read.csv( "Other Parties FY2020-2021 Part8.csv")

Other_Parties_2021_9 <- read.csv( "Other Parties FY2020-2021 Part9.csv")


Other_Parties_2021_10 <- read.csv( "Other Parties FY2020-2021 Part10.csv")

Other_Parties_2021_11 <- read.csv( "Other Parties FY2020-2021 Part11.csv")

Other_Parties_2021_12 <- read.csv( "Other Parties FY2020-2021 Part12.csv")

Other_Parties_2021_13 <- read.csv( "Other Parties FY2020-2021 Part13.csv")

Other_Parties_2021 <-  rbind(Other_Parties_2021_1, Other_Parties_2021_2, Other_Parties_2021_3, Other_Parties_2021_4, Other_Parties_2021_5,
                             Other_Parties_2021_6, Other_Parties_2021_7, Other_Parties_2021_8, Other_Parties_2021_9, Other_Parties_2021_10,
                             Other_Parties_2021_11, Other_Parties_2021_12, Other_Parties_2021_13)

rm(Other_Parties_2021_1, Other_Parties_2021_2, Other_Parties_2021_3, Other_Parties_2021_4, Other_Parties_2021_5,
      Other_Parties_2021_6, Other_Parties_2021_7, Other_Parties_2021_8, Other_Parties_2021_9, Other_Parties_2021_10,
      Other_Parties_2021_11, Other_Parties_2021_12, Other_Parties_2021_13)



Security_2021_1 <- read.csv( "Security FY2020-2021 Part1.csv")

Security_2021_2 <- read.csv( "Security FY2020-2021 Part2.csv")

Security_2021_3 <- read.csv( "Security FY2020-2021 Part3.csv")

Security_2021_4 <- read.csv( "Security FY2020-2021 Part4.csv")

Security_2021_5 <- read.csv( "Security FY2020-2021 Part5.csv")

Security_2021_6 <- read.csv( "Security FY2020-2021 Part6.csv")

Security_2021_7 <- read.csv( "Security FY2020-2021 Part7.csv")

Security_2021 <- rbind(Security_2021_1, Security_2021_2, Security_2021_3, Security_2021_4, Security_2021_5, Security_2021_6, Security_2021_7)

rm(Security_2021_1, Security_2021_2, Security_2021_3, Security_2021_4, Security_2021_5, Security_2021_6, Security_2021_7)


###################################################################################
# Read the files for 2021-2022, and combine them into three files, one for debt, 
# one for security and one for other parties
###################################################################################


Debt_2022_1 <- read.csv( "Submitter and Debt Information FY 2021-2022 Part1.csv")

Debt_2022_2 <- read.csv( "Submitter and Debt Information FY 2021-2022 Part2.csv")

Debt_2022_3 <- read.csv( "Submitter and Debt Information FY 2021-2022 Part3.csv")

Debt_2022_4 <- read.csv( "Submitter and Debt Information FY 2021-2022 Part4.csv")

Debt_2022_5 <- read.csv( "Submitter and Debt Information FY 2021-2022 Part5.csv")

Debt_2022_6 <- read.csv( "Submitter and Debt Information FY 2021-2022 Part6.csv")

Debt_2022_7 <- read.csv( "Submitter and Debt Information FY 2021-2022 Part7.csv")

Debt_2022 <- rbind(Debt_2022_1, Debt_2022_2, Debt_2022_3, Debt_2022_4, Debt_2022_5, Debt_2022_6, Debt_2022_7 )

rm(Debt_2022_1, Debt_2022_2, Debt_2022_3, Debt_2022_4, Debt_2022_5, Debt_2022_6, Debt_2022_7 )


Other_Parties_2022_1 <- read.csv( "Other Parties FY2021-2022 Part1.csv")

Other_Parties_2022_2 <- read.csv( "Other Parties FY2021-2022 Part2.csv")

Other_Parties_2022_3 <- read.csv( "Other Parties FY2021-2022 Part3.csv")

Other_Parties_2022_4 <- read.csv( "Other Parties FY2021-2022 Part4.csv")


Other_Parties_2022_5 <- read.csv( "Other Parties FY2021-2022 Part5.csv")

Other_Parties_2022_6 <- read.csv( "Other Parties FY2021-2022 Part6.csv")

Other_Parties_2022_7 <- read.csv( "Other Parties FY2021-2022 Part7.csv")

Other_Parties_2022_8 <- read.csv( "Other Parties FY2021-2022 Part8.csv")


Other_Parties_2022_9 <- read.csv( "Other Parties FY2021-2022 Part9.csv")

Other_Parties_2022_10 <- read.csv( "Other Parties FY2021-2022 Part10.csv")

Other_Parties_2022_11 <- read.csv( "Other Parties FY2021-2022 Part11.csv")

Other_Parties_2022_12 <- read.csv( "Other Parties FY2021-2022 Part12.csv")


Other_Parties_2022_13 <- read.csv( "Other Parties FY2021-2022 Part13.csv")

Other_Parties_2022_14 <- read.csv( "Other Parties FY2021-2022 Part14.csv")

Other_Parties_2022_15 <- read.csv( "Other Parties FY2021-2022 Part15.csv")

Other_Parties_2022_16 <- read.csv( "Other Parties FY2021-2022 Part16.csv")

Other_Parties_2022_17 <- read.csv( "Other Parties FY2021-2022 Part17.csv")

Other_Parties_2022 <- rbind(Other_Parties_2022_1, Other_Parties_2022_2, Other_Parties_2022_3, Other_Parties_2022_4, Other_Parties_2022_5, 
                            Other_Parties_2022_6, Other_Parties_2022_7, Other_Parties_2022_8, Other_Parties_2022_9, Other_Parties_2022_10, 
                            Other_Parties_2022_11, Other_Parties_2022_12, Other_Parties_2022_13, Other_Parties_2022_14, Other_Parties_2022_15, 
                            Other_Parties_2022_16, Other_Parties_2022_17)


rm(Other_Parties_2022_1, Other_Parties_2022_2, Other_Parties_2022_3, Other_Parties_2022_4, Other_Parties_2022_5, 
      Other_Parties_2022_6, Other_Parties_2022_7, Other_Parties_2022_8, Other_Parties_2022_9, Other_Parties_2022_10, 
      Other_Parties_2022_11, Other_Parties_2022_12, Other_Parties_2022_13, Other_Parties_2022_14, Other_Parties_2022_15, 
      Other_Parties_2022_16, Other_Parties_2022_17)


Security_2022_1 <- read.csv( "Security FY2021-2022 Part1.csv")

Security_2022_2 <- read.csv( "Security FY2021-2022 Part2.csv")

Security_2022_3 <- read.csv( "Security FY2021-2022 Part3.csv")

Security_2022_4 <- read.csv( "Security FY2021-2022 Part4.csv")

Security_2022_5 <- read.csv( "Security FY2021-2022 Part5.csv")

Security_2022_6 <- read.csv( "Security FY2021-2022 Part6.csv")

Security_2022_7 <- read.csv( "Security FY2021-2022 Part7.csv")

Security_2022_8 <- read.csv( "Security FY2021-2022 Part8.csv")

Security_2022_9 <- read.csv( "Security FY2021-2022 Part9.csv")

Security_2022_10 <- read.csv( "Security FY2021-2022 Part10.csv")

Security_2022_11 <- read.csv( "Security FY2021-2022 Part11.csv")

Security_2022 <- rbind(Security_2022_1, Security_2022_2, Security_2022_3, Security_2022_4, Security_2022_5,
                       Security_2022_6, Security_2022_7, Security_2022_8, Security_2022_9, Security_2022_10,
                       Security_2022_11)

rm(Security_2022_1, Security_2022_2, Security_2022_3, Security_2022_4, Security_2022_5,
   Security_2022_6, Security_2022_7, Security_2022_8, Security_2022_9, Security_2022_10,
   Security_2022_11)



###################################################################################
# Read the files for 2022-2023, and combine them into three files, one for debt, 
# one for security and one for other parties
###################################################################################

Debt_2023_1 <- read.csv( "Submitter and Debt Information FY2022-2023 Part1.csv")

Debt_2023_2 <- read.csv( "Submitter and Debt Information FY2022-2023 Part2.csv")

Debt_2023_3 <- read.csv( "Submitter and Debt Information FY2022-2023 Part3.csv")

Debt_2023_4 <- read.csv( "Submitter and Debt Information FY2022-2023 Part4.csv")

Debt_2023_5 <- read.csv( "Submitter and Debt Information FY2022-2023 Part5.csv")

Debt_2023_6 <- read.csv( "Submitter and Debt Information FY2022-2023 Part6.csv")

Debt_2023_7 <- read.csv( "Submitter and Debt Information FY2022-2023 Part7.csv")

Debt_2023_8 <- read.csv( "Submitter and Debt Information FY2022-2023 Part 8.csv")

Debt_2023_9 <- read.csv( "Submitter and Debt Information FY2022-2023 Part9.csv")

Debt_2023_10 <- read.csv( "Submitter and Debt Information FY2022-2023 Part 10.csv")


Debt_2023 <- rbind(Debt_2023_1, Debt_2023_2, Debt_2023_3,Debt_2023_4, Debt_2023_5,
                   Debt_2023_6, Debt_2023_7, Debt_2023_8, Debt_2023_9, Debt_2023_10)

rm(Debt_2023_1, Debt_2023_2, Debt_2023_3,Debt_2023_4, Debt_2023_5,
   Debt_2023_6, Debt_2023_7, Debt_2023_8, Debt_2023_9, Debt_2023_10)

Other_Parties_2023_1 <- read.csv( "Other Parties FY2022-2023 Part1.csv")

Other_Parties_2023_2 <- read.csv( "Other Parties FY2022-2023 Part2.csv")

Other_Parties_2023_3 <- read.csv( "Other Parties FY2022-2023 Part3.csv")

Other_Parties_2023_4 <- read.csv( "Other Parties FY2022-2023 Part4.csv")

Other_Parties_2023_5 <- read.csv( "Other Parties FY2022-2023 Part5.csv")

Other_Parties_2023_6 <- read.csv( "Other Parties FY2022-2023 Part6.csv")

Other_Parties_2023_7 <- read.csv( "Other Parties FY2022-2023 Part7.csv")

Other_Parties_2023_8 <- read.csv( "Other Parties FY2022-2023 Part8.csv")

Other_Parties_2023_9 <- read.csv( "Other Parties FY2022-2023 Part9.csv")

Other_Parties_2023_10 <- read.csv( "Other Parties FY2022-2023 Part10.csv")

Other_Parties_2023_11 <- read.csv( "Other Parties FY2022-2023 Part11.csv")

Other_Parties_2023_12 <- read.csv( "Other Parties FY2022-2023 Part12.csv")

Other_Parties_2023_13 <- read.csv( "Other Parties FY2022-2023 Part13.csv")

Other_Parties_2023_14 <- read.csv( "Other Parties FY2022-2023 Part14.csv")

Other_Parties_2023_15 <- read.csv( "Other Parties FY2022-2023 Part15.csv")

Other_Parties_2023_16 <- read.csv( "Other Parties FY2022-2023 Part16.csv")

Other_Parties_2023_17 <- read.csv( "Other Parties FY2022-2023 Part17.csv")

Other_Parties_2023_18 <- read.csv( "Other Parties FY2022-2023 Part18.csv")

Other_Parties_2023_19 <- read.csv( "Other Parties FY2022-2023 Part19.csv")

Other_Parties_2023_20 <- read.csv( "Other Parties FY2022-2023 Part20.csv")

Other_Parties_2023_21 <- read.csv( "Other Parties FY2022-2023 Part21.csv")

Other_Parties_2023_22 <- read.csv( "Other Parties FY2022-2023 Part22.csv")

Other_Parties_2023_23 <- read.csv( "Other Parties FY2022-2023 Part23.csv")

Other_Parties_2023_24 <- read.csv( "Other Parties FY2022-2023 Part24.csv")

Other_Parties_2023_25 <- read.csv( "Other Parties FY2022-2023 Part25.csv")

Other_Parties_2023 <- rbind(Other_Parties_2023_1,Other_Parties_2023_2,Other_Parties_2023_3,Other_Parties_2023_4,Other_Parties_2023_5,
                            Other_Parties_2023_6,Other_Parties_2023_7,Other_Parties_2023_8,Other_Parties_2023_9,Other_Parties_2023_10,
                            Other_Parties_2023_11,Other_Parties_2023_12,Other_Parties_2023_13,Other_Parties_2023_14,Other_Parties_2023_15,
                            Other_Parties_2023_16,Other_Parties_2023_17,Other_Parties_2023_18,Other_Parties_2023_19,Other_Parties_2023_20,
                            Other_Parties_2023_21,Other_Parties_2023_22,Other_Parties_2023_23,Other_Parties_2023_24,Other_Parties_2023_25)

rm(Other_Parties_2023_1,Other_Parties_2023_2,Other_Parties_2023_3,Other_Parties_2023_4,Other_Parties_2023_5,
   Other_Parties_2023_6,Other_Parties_2023_7,Other_Parties_2023_8,Other_Parties_2023_9,Other_Parties_2023_10,
   Other_Parties_2023_11,Other_Parties_2023_12,Other_Parties_2023_13,Other_Parties_2023_14,Other_Parties_2023_15,
   Other_Parties_2023_16,Other_Parties_2023_17,Other_Parties_2023_18,Other_Parties_2023_19,Other_Parties_2023_20,
   Other_Parties_2023_21,Other_Parties_2023_22,Other_Parties_2023_23,Other_Parties_2023_24,Other_Parties_2023_25)


Security_2023_1 <- read.csv( "Security FY2022-2023 Part1.csv")

Security_2023_2 <- read.csv( "Security FY2022-2023 Part2.csv")

Security_2023_3 <- read.csv( "Security FY2022-2023 Part3.csv")

Security_2023_4 <- read.csv( "Security FY2022-2023 Part4.csv")

Security_2023_5 <- read.csv( "Security FY2022-2023 Part5.csv")

Security_2023_6 <- read.csv( "Security FY2022-2023 Part6.csv")

Security_2023_7 <- read.csv( "Security FY2022-2023 Part7.csv")

Security_2023_8 <- read.csv( "Security FY2022-2023 Part8.csv")

Security_2023_9 <- read.csv( "Security FY2022-2023 Part9.csv")

Security_2023_10 <- read.csv( "Security FY2022-2023 Part10.csv")

Security_2023_11 <- read.csv( "Security FY2022-2023 Part11.csv")

Security_2023_12 <- read.csv( "Security FY2022-2023 Part12.csv")

Security_2023_13 <- read.csv( "Security FY2022-2023 Part13.csv")

Security_2023_14 <- read.csv( "Security FY2022-2023 Part14.csv")

Security_2023 <- rbind(Security_2023_1,Security_2023_2,Security_2023_3,Security_2023_4,Security_2023_5,
                       Security_2023_6,Security_2023_7,Security_2023_8,Security_2023_9,Security_2023_10,
                       Security_2023_11,Security_2023_12,Security_2023_13,Security_2023_14)

rm(Security_2023_1,Security_2023_2,Security_2023_3,Security_2023_4,Security_2023_5,
      Security_2023_6,Security_2023_7,Security_2023_8,Security_2023_9,Security_2023_10,
      Security_2023_11,Security_2023_12,Security_2023_13,Security_2023_14)
                       



###################################################################################
# Read the files for 2023-2024, and combine them into three files, one for debt, 
# one for security and one for other parties
###################################################################################

Debt_2024_1 <- read.csv( "Submitter and Debt Information FY2023-2024 Part1.csv")

Debt_2024_2 <- read.csv( "Submitter and Debt Information FY2023-2024 Part2.csv")

Debt_2024_3 <- read.csv( "Submitter and Debt Information FY2023-2024 Part3.csv")

Debt_2024_4 <- read.csv( "Submitter and Debt Information FY2023-2024 Part4.csv")

Debt_2024_5 <- read.csv( "Submitter and Debt Information FY2023-2024 Part5.csv")

Debt_2024_6 <- read.csv( "Submitter and Debt Information FY2023-2024 Part6.csv")

Debt_2024_7 <- read.csv( "Submitter and Debt Information FY2023-2024 Part7.csv")

Debt_2024_8 <- read.csv( "Submitter and Debt Information FY2023-2024 Part8.csv")

Debt_2024_9 <- read.csv( "Submitter and Debt Information FY2023-2024 Part9.csv")

Debt_2024_10 <- read.csv( "Submitter and Debt Information FY2023-2024 Part10.csv")

Debt_2024_11 <- read.csv( "Submitter and Debt Information FY2023-2024 Part11.csv")

Debt_2024_12 <- read.csv( "Submitter and Debt Information FY2023-2024 Part12.csv")

Debt_2024_13 <- read.csv( "Submitter and Debt Information FY2023-2024 Part13.csv")

Debt_2024_14 <- read.csv( "Submitter and Debt Information FY2023-2024 Part14.csv")

Debt_2024_15 <- read.csv( "Submitter and Debt Information FY2023-2024 Part15.csv")

Debt_2024_16 <- read.csv( "Submitter and Debt Information FY2023-2024 Part16.csv")

Debt_2024_17 <- read.csv( "Submitter and Debt Information FY2023-2024 Part17.csv")

Debt_2024_18 <- read.csv( "Submitter and Debt Information FY2023-2024 Part18.csv")

Debt_2024_19 <- read.csv( "Submitter and Debt Information FY2023-2024 Part19.csv")

Debt_2024_20 <- read.csv( "Submitter and Debt Information FY2023-2024 Part20.csv")

Debt_2024_21 <- read.csv( "Submitter and Debt Information FY2023-2024 Part21.csv")

Debt_2024_22 <- read.csv( "Submitter and Debt Information FY2023-2024 Part22.csv")

Debt_2024_23 <- read.csv( "Submitter and Debt Information FY2023-2024 Part23.csv")

Debt_2024_24 <- read.csv( "Submitter and Debt Information FY2023-2024 Part24.csv")

Debt_2024_25 <- read.csv( "Submitter and Debt Information FY2023-2024 Part25.csv")

Debt_2024_26 <- read.csv( "Submitter and Debt Information FY2023-2024 Part26.csv")

Debt_2024_27 <- read.csv( "Submitter and Debt Information FY2023-2024 Part27.csv")

Debt_2024_28 <- read.csv( "Submitter and Debt Information FY2023-2024 Part28.csv")

Debt_2024_29 <- read.csv( "Submitter and Debt Information FY2023-2024 Part29.csv")

Debt_2024_30 <- read.csv( "Submitter and Debt Information FY2023-2024 Part30.csv")

Debt_2024_31 <- read.csv( "Submitter and Debt Information FY2023-2024 Part31.csv")

Debt_2024_32 <- read.csv( "Submitter and Debt Information FY2023-2024 Part32.csv")

Debt_2024_33 <- read.csv( "Submitter and Debt Information FY2023-2024 Part33.csv")


Debt_2024 <- rbind(Debt_2024_1, Debt_2024_2, Debt_2024_3,Debt_2024_4, Debt_2024_5,
                   Debt_2024_6, Debt_2024_7, Debt_2024_8, Debt_2024_9, Debt_2024_10,
                   Debt_2024_11, Debt_2024_12, Debt_2024_13,Debt_2024_14, Debt_2024_15,
                   Debt_2024_16, Debt_2024_17, Debt_2024_18, Debt_2024_19, Debt_2024_20,
                   Debt_2024_21, Debt_2024_22, Debt_2024_23,Debt_2024_24, Debt_2024_25,
                   Debt_2024_26, Debt_2024_27, Debt_2024_28, Debt_2024_29, Debt_2024_30,
                   Debt_2024_31, Debt_2024_32, Debt_2024_33)

rm(Debt_2024_1, Debt_2024_2, Debt_2024_3,Debt_2024_4, Debt_2024_5,
   Debt_2024_6, Debt_2024_7, Debt_2024_8, Debt_2024_9, Debt_2024_10,
   Debt_2024_11, Debt_2024_12, Debt_2024_13,Debt_2024_14, Debt_2024_15,
   Debt_2024_16, Debt_2024_17, Debt_2024_18, Debt_2024_19, Debt_2024_20,
   Debt_2024_21, Debt_2024_22, Debt_2024_23,Debt_2024_24, Debt_2024_25,
   Debt_2024_26, Debt_2024_27, Debt_2024_28, Debt_2024_29, Debt_2024_30,
   Debt_2024_31, Debt_2024_32, Debt_2024_33)



Other_Parties_2024_1 <- read.csv( "Other parties FY 2023-2024 part 1.csv")

Other_Parties_2024_2 <- read.csv( "Other parties FY 2023-2024 part 2.csv")

Other_Parties_2024_3 <- read.csv( "Other parties FY 2023-2024 part 3.csv")

Other_Parties_2024_4 <- read.csv( "Other parties FY 2023-2024 part 4.csv")

Other_Parties_2024_5 <- read.csv( "Other parties FY 2023-2024 part 5.csv")

Other_Parties_2024_6 <- read.csv( "Other parties FY 2023-2024 part 6.csv")

Other_Parties_2024_7 <- read.csv( "Other parties FY 2023-2024 part 7.csv")

Other_Parties_2024_8 <- read.csv( "Other parties FY 2023-2024 part 8.csv")

Other_Parties_2024_9 <- read.csv( "Other parties FY 2023-2024 part 9.csv")

Other_Parties_2024_10 <- read.csv( "Other parties FY 2023-2024 part 10.csv")

Other_Parties_2024_11 <- read.csv( "Other parties FY 2023-2024 part 11.csv")

Other_Parties_2024_12 <- read.csv( "Other parties FY 2023-2024 part 12.csv")

Other_Parties_2024_13 <- read.csv( "Other parties FY 2023-2024 part 13.csv")

Other_Parties_2024_14 <- read.csv( "Other parties FY 2023-2024 part 14.csv")

Other_Parties_2024_15 <- read.csv( "Other parties FY 2023-2024 part 15.csv")

Other_Parties_2024_16 <- read.csv( "Other parties FY 2023-2024 part 16.csv")

Other_Parties_2024_17 <- read.csv( "Other parties FY 2023-2024 part 17.csv")

Other_Parties_2024_18 <- read.csv( "Other parties FY 2023-2024 part 18.csv")

Other_Parties_2024_19 <- read.csv( "Other parties FY 2023-2024 part 19.csv")

Other_Parties_2024_20 <- read.csv( "Other parties FY 2023-2024 part 20.csv")

Other_Parties_2024_21 <- read.csv( "Other parties FY 2023-2024 part 21.csv")

Other_Parties_2024_22 <- read.csv( "Other parties FY 2023-2024 part 22.csv")

Other_Parties_2024_23 <- read.csv( "Other parties FY 2023-2024 part 23.csv")

Other_Parties_2024_24 <- read.csv( "Other parties FY 2023-2024 part 24.csv")

Other_Parties_2024_25 <- read.csv( "Other parties FY 2023-2024 part 25.csv")

Other_Parties_2024_26 <- read.csv( "Other parties FY 2023-2024 part 26.csv")

Other_Parties_2024_27 <- read.csv( "Other parties FY 2023-2024 part 27.csv")

Other_Parties_2024_28 <- read.csv( "Other parties FY 2023-2024 part 28.csv")

Other_Parties_2024_29 <- read.csv( "Other parties FY 2023-2024 part 29.csv")

Other_Parties_2024_30 <- read.csv( "Other parties FY 2023-2024 part 30.csv")

Other_Parties_2024_31 <- read.csv( "Other parties FY 2023-2024 part 31.csv")

Other_Parties_2024_32 <- read.csv( "Other parties FY 2023-2024 part 32.csv")

Other_Parties_2024_33 <- read.csv( "Other parties FY 2023-2024 part 33.csv")

Other_Parties_2024_34 <- read.csv( "Other parties FY 2023-2024 part 34.csv")

Other_Parties_2024_35 <- read.csv( "Other parties FY 2023-2024 part 35.csv")

Other_Parties_2024_36 <- read.csv( "Other parties FY 2023-2024 part 36.csv")

Other_Parties_2024_37 <- read.csv( "Other parties FY 2023-2024 part 37.csv")

Other_Parties_2024_38 <- read.csv( "Other parties FY 2023-2024 part 38.csv")

Other_Parties_2024 <- rbind(Other_Parties_2024_1, Other_Parties_2024_2, Other_Parties_2024_3, Other_Parties_2024_4,
                            Other_Parties_2024_5, Other_Parties_2024_6, Other_Parties_2024_7, Other_Parties_2024_8,
                            Other_Parties_2024_9, Other_Parties_2024_10, 
                            Other_Parties_2024_11, Other_Parties_2024_12, Other_Parties_2024_13, Other_Parties_2024_14,
                            Other_Parties_2024_15, Other_Parties_2024_16, Other_Parties_2024_17, Other_Parties_2024_18,
                            Other_Parties_2024_19, Other_Parties_2024_20, 
                            Other_Parties_2024_21, Other_Parties_2024_22, Other_Parties_2024_23, Other_Parties_2024_24,
                            Other_Parties_2024_25, Other_Parties_2024_26, Other_Parties_2024_27, Other_Parties_2024_28,
                            Other_Parties_2024_29, Other_Parties_2024_30, 
                            Other_Parties_2024_31, Other_Parties_2024_32, Other_Parties_2024_33, Other_Parties_2024_34,
                            Other_Parties_2024_35, Other_Parties_2024_36, Other_Parties_2024_37, Other_Parties_2024_38) 

rm(Other_Parties_2024_1, Other_Parties_2024_2, Other_Parties_2024_3, Other_Parties_2024_4,
      Other_Parties_2024_5, Other_Parties_2024_6, Other_Parties_2024_7, Other_Parties_2024_8,
      Other_Parties_2024_9, Other_Parties_2024_10, 
      Other_Parties_2024_11, Other_Parties_2024_12, Other_Parties_2024_13, Other_Parties_2024_14,
      Other_Parties_2024_15, Other_Parties_2024_16, Other_Parties_2024_17, Other_Parties_2024_18,
      Other_Parties_2024_19, Other_Parties_2024_20, 
      Other_Parties_2024_21, Other_Parties_2024_22, Other_Parties_2024_23, Other_Parties_2024_24,
      Other_Parties_2024_25, Other_Parties_2024_26, Other_Parties_2024_27, Other_Parties_2024_28,
      Other_Parties_2024_29, Other_Parties_2024_30, 
      Other_Parties_2024_31, Other_Parties_2024_32, Other_Parties_2024_33, Other_Parties_2024_34,
      Other_Parties_2024_35, Other_Parties_2024_36, Other_Parties_2024_37, Other_Parties_2024_38) 



Security_2024_1 <- read.csv( "Security FY2023-2024 Part1.csv")

Security_2024_2 <- read.csv( "Security FY2023-2024 Part2.csv")

Security_2024_3 <- read.csv( "Security FY2023-2024 Part3.csv")

Security_2024_4 <- read.csv( "Security FY2023-2024 Part4.csv")

Security_2024_5 <- read.csv( "Security FY2023-2024 Part5.csv")

Security_2024_6 <- read.csv( "Security FY2023-2024 Part6.csv")

Security_2024_7 <- read.csv( "Security FY2023-2024 Part7.csv")

Security_2024_8 <- read.csv( "Security FY2023-2024 Part8.csv")

Security_2024_9 <- read.csv( "Security FY2023-2024 Part9.csv")

Security_2024_10 <- read.csv( "Security FY2023-2024 Part10.csv")

Security_2024_11 <- read.csv( "Security FY2023-2024 Part11.csv")

Security_2024_12 <- read.csv( "Security FY2023-2024 Part12.csv")

Security_2024_13 <- read.csv( "Security FY2023-2024 Part13.csv")

Security_2024_14 <- read.csv( "Security FY2023-2024 Part14.csv")

Security_2024_15 <- read.csv( "Security FY2023-2024 Part15.csv")

Security_2024_16 <- read.csv( "Security FY2023-2024 Part16.csv")

Security_2024_17 <- read.csv( "Security FY2023-2024 Part17.csv")

Security_2024_18 <- read.csv( "Security FY2023-2024 Part18.csv")

Security_2024_19 <- read.csv( "Security FY2023-2024 Part19.csv")

Security_2024_20 <- read.csv( "Security FY2023-2024 Part20.csv")

Security_2024_21 <- read.csv( "Security FY2023-2024 Part21.csv")

Security_2024_22 <- read.csv( "Security FY2023-2024 Part22.csv")

Security_2024_23 <- read.csv( "Security FY2023-2024 Part23.csv")


Security_2024 <- rbind(Security_2024_1, Security_2024_2, Security_2024_3, Security_2024_4, Security_2024_5,
                       Security_2024_6, Security_2024_7, Security_2024_8, Security_2024_9, Security_2024_10,
                       Security_2024_11, Security_2024_12, Security_2024_13, Security_2024_14, Security_2024_15,
                       Security_2024_16, Security_2024_17, Security_2024_18, Security_2024_19, Security_2024_20,
                       Security_2024_21, Security_2024_22, Security_2024_23)

rm(Security_2024_1, Security_2024_2, Security_2024_3, Security_2024_4, Security_2024_5,
      Security_2024_6, Security_2024_7, Security_2024_8, Security_2024_9, Security_2024_10,
      Security_2024_11, Security_2024_12, Security_2024_13, Security_2024_14, Security_2024_15,
      Security_2024_16, Security_2024_17, Security_2024_18, Security_2024_19, Security_2024_20,
      Security_2024_21, Security_2024_22, Security_2024_23)




#########################################################################################
# Start - Combine the debt, other party and security files and include a marker for Year
# and write the combined files to the drive
#########################################################################################

Debt_2018$id <- NA

Debt_2018$Year <- 2018
Debt_2019$Year <- 2019
Debt_2020$Year <- 2020
Debt_2021$Year <- 2021
Debt_2022$Year <- 2022
Debt_2023$Year <- 2023
Debt_2024$Year <- 2024




Debt <- rbind(Debt_2018, Debt_2019, Debt_2020, Debt_2021, Debt_2022, Debt_2023, Debt_2024)
rm(Debt_2018, Debt_2019, Debt_2020, Debt_2021, Debt_2022, Debt_2023, Debt_2024)

Other_Parties_2018$id <- NA

Other_Parties_2018$Year <- 2018
Other_Parties_2019$Year <- 2019
Other_Parties_2020$Year <- 2020
Other_Parties_2021$Year <- 2021
Other_Parties_2022$Year <- 2022
Other_Parties_2023$Year <- 2023
Other_Parties_2024$Year <- 2024


Other_Parties <- rbind(Other_Parties_2018, Other_Parties_2019, Other_Parties_2020, 
                       Other_Parties_2021, Other_Parties_2022,Other_Parties_2023, Other_Parties_2024)


rm(Other_Parties_2018, Other_Parties_2019, Other_Parties_2020, 
   Other_Parties_2021, Other_Parties_2022,Other_Parties_2023, Other_Parties_2024)



Security_2019$Year <- 2019
Security_2020$Year <- 2020
Security_2021$Year <- 2021
Security_2022$Year <- 2022
Security_2023$Year <- 2023
Security_2024$Year <- 2024


Security <- rbind(Security_2019, Security_2020, Security_2021, Security_2022, Security_2023, Security_2024)

rm(Security_2019, Security_2020, Security_2021, Security_2022, Security_2023, Security_2024)

tmp <- tempfile(pattern = "Debt", tmpdir = getwd(), fileext = ".csv")

write_csv(Debt, tmp)

tmp <- tempfile(pattern = "Other_Parties", tmpdir = getwd(), fileext = ".csv")

write_csv(Other_Parties, tmp)

tmp <- tempfile(pattern = "Security", tmpdir = getwd(), fileext = ".csv")

write_csv(Security, tmp)


#########################################################################################
# Start - Combine the debt, other party and security files and include a marker for Year
# and write the combined files to the drive
#########################################################################################

###################################################################################
############## End - Read the NESL Data ########################################
###################################################################################




###################################################################################
############## Start - Extract PAN information ####################################
###################################################################################

# Extract PAN for all the debtors (using yearly version of files)

Other_Parties_2018$Relationship <- toupper(Other_Parties_2018$Relationship)
Other_Parties_2019$Relationship <- toupper(Other_Parties_2019$Relationship)
Other_Parties_2020$Relationship <- toupper(Other_Parties_2020$Relationship)
Other_Parties_2021$Relationship <- toupper(Other_Parties_2021$Relationship)
Other_Parties_2022$Relationship <- toupper(Other_Parties_2022$Relationship)
Other_Parties_2023$Relationship <- toupper(Other_Parties_2023$Relationship)

x <- aggregate(Other_Parties_2023$PAN, list(Other_Parties_2023$Relationship), length)

PAN_List_2018 <- Other_Parties_2018 %>%
  dplyr::group_by(PAN, Relationship) %>%
  summarise(Party_Name = first(Party.name),
            Count = length(PAN))

PAN_List_2019 <- Other_Parties_2019 %>%
  dplyr::group_by(PAN, Relationship) %>%
  summarise(Party_Name = first(Party.name),
            Count = length(PAN))

PAN_List_2020 <- Other_Parties_2020 %>%
  dplyr::group_by(PAN, Relationship) %>%
  summarise(Party_Name = first(Party.name),
            Count = length(PAN))

PAN_List_2021 <- Other_Parties_2021 %>%
  dplyr::group_by(PAN, Relationship) %>%
  summarise(Party_Name = first(Party.name),
            Count = length(PAN))

PAN_List_2022 <- Other_Parties_2022 %>%
  dplyr::group_by(PAN, Relationship) %>%
  summarise(Party_Name = first(Party.name),
            Count = length(PAN))

PAN_List_2023 <- Other_Parties_2023 %>%
  dplyr::group_by(PAN, Relationship) %>%
  summarise(Party_Name = first(Party.name),
            Count = length(PAN))



PAN_List <- rbind(PAN_List_2018, PAN_List_2019,PAN_List_2020, PAN_List_2021, PAN_List_2022, PAN_List_2023)

PAN_List_consol <- PAN_List %>%
  dplyr::group_by(PAN, Relationship) %>%
  summarise(Party_Name = first(Party_Name),
            Count = sum(Count))

PAN_List_consol_2 <- PAN_List %>%
  dplyr::group_by(PAN) %>%
  summarise(Party_Name = first(Party_Name),
            Count = sum(Count))

PAN_List_Debtor <- PAN_List %>%
  dplyr::filter(Relationship == "DEBTOR") %>%
  dplyr::group_by(PAN) %>%
  summarise(Party_Name = first(Party_Name),
            Count = sum(Count))


PAN_List_Creditor <- PAN_List %>%
  dplyr::filter(Relationship == "CREDITOR") %>%
  dplyr::group_by(PAN) %>%
  summarise(Party_Name = first(Party_Name),
            Count = sum(Count))

PAN_List_Assignee <- PAN_List %>%
  dplyr::filter(Relationship == "ASSIGNEE") %>%
  dplyr::group_by(PAN) %>%
  summarise(Party_Name = first(Party_Name),
            Count = sum(Count))

PAN_List_Coobligant <- PAN_List %>%
  dplyr::filter(Relationship == "CO-OBLIGANT") %>%
  dplyr::group_by(PAN) %>%
  summarise(Party_Name = first(Party_Name),
            Count = sum(Count))

PAN_List_Guarantor <- PAN_List %>%
  dplyr::filter(Relationship == "GUARANTOR") %>%
  dplyr::group_by(PAN) %>%
  summarise(Party_Name = first(Party_Name),
            Count = sum(Count))

PAN_List_Beneficiary<- PAN_List %>%
  dplyr::filter(Relationship == "BENEFICIARY") %>%
  dplyr::group_by(PAN) %>%
  summarise(Party_Name = first(Party_Name),
            Count = sum(Count))

PAN_List_Security <- PAN_List %>%
  dplyr::filter(Relationship == "SECURITY PROVIDER") %>%
  dplyr::group_by(PAN) %>%
  summarise(Party_Name = first(Party_Name),
            Count = sum(Count))


tmp <- tempfile(pattern = "PAN_All", tmpdir = getwd(), fileext = ".csv")

write_csv(PAN_List_consol_2, tmp)


tmp <- tempfile(pattern = "PAN_List_Debtor", tmpdir = getwd(), fileext = ".csv")

write_csv(PAN_List_Debtor, tmp)

tmp <- tempfile(pattern = "PAN_List_Creditor", tmpdir = getwd(), fileext = ".csv")

write_csv(PAN_List_Creditor, tmp)

tmp <- tempfile(pattern = "PAN_List_Security", tmpdir = getwd(), fileext = ".csv")

write_csv(PAN_List_Security, tmp)


###################################################################################
############## End - Extract PAN information ####################################
###################################################################################



###### Identify unique debt ids across the years #################################3






###################################################################################
############## Start - Basic Analysis of Data #####################################
###################################################################################
# Debt <- read.csv( "Debt.csv")

# Other_Parties <- read.csv( "Other_Parties.csv")

# Security <- read.csv( "Security.csv")

Security <- readr::read_csv( "Security.csv")

Debt <- readr::read_csv("Debt.csv")

Other_Parties <- readr::read_csv( "Other_Parties.csv")

Debt$id <- NULL

Debt <- Debt %>% dplyr::distinct()

rm(Debt_1)

############# Pre processing columns to replace NULL with NA ########################
Debt$DOI <- ifelse(Debt$DOI == "NULL", NA, Debt$DOI) 

Debt$Default.amount <- ifelse(Debt$Default.amount == "NULL", NA, Debt$Default.amount)

Debt$Amount.Overdue <- ifelse(Debt$Amount.Overdue == "NULL", NA, Debt$Amount.Overdue) 

Debt$Date.of.Default <- ifelse(Debt$Date.of.Default == "NULL", NA, Debt$Date.of.Default) 

Debt$Repayment.Frequency <- ifelse(Debt$Repayment.Frequency == "NULL", NA, Debt$Repayment.Frequency)

Debt$Lending.arrangement <- ifelse(Debt$Lending.arrangement == "NULL", NA, Debt$Lending.arrangement) 

Debt$Total.Outstanding.Amount.1 <- ifelse(Debt$Total.Outstanding.Amount.1 == "NULL", NA, Debt$Total.Outstanding.Amount.1)

Debt$Days.past.due <- ifelse(Debt$Days.past.due == "NULL", NA, Debt$Days.past.due)

Debt$Date.of.filing.of.suit <- ifelse(Debt$Date.of.filing.of.suit == "NULL", NA, Debt$Date.of.filing.of.suit) 

Debt$Amount.of.last.repayment <- ifelse(Debt$Amount.of.last.repayment == "NULL", NA, Debt$Amount.of.last.repayment) 

Debt$Date.of.last..repayment <- ifelse(Debt$Date.of.last..repayment == "NULL", NA, Debt$Date.of.last..repayment)

Debt$Date.of.last.repayment <- Debt$Date.of.last..repayment 

Debt$Date.of.last..repayment <- NULL

Debt$Type.of.debt <- toupper(Debt$Type.of.debt) 

Debt$Debt.subtype  <- toupper(Debt$Debt.subtype)

Debt$Submission.type  <- toupper(Debt$Submission.type ) 

Debt$Party.Name   <- toupper(Debt$Party.Name )

Debt$Relationship   <- toupper(Debt$Relationship)

Other_Parties$CIN <- ifelse(Other_Parties$CIN == "NULL", NA, Other_Parties$CIN) 

Other_Parties$CIN <- ifelse(Other_Parties$CIN == "", NA, Other_Parties$CIN) 

Other_Parties$DOI <- ifelse(Other_Parties$DOI == "NULL", NA, Other_Parties$DOI) 

Other_Parties$DOI <- ifelse(Other_Parties$DOI == "", NA, Other_Parties$DOI) 

Other_Parties$Relationship <- toupper(Other_Parties$Relationship ) 

Other_Parties$Legal.Constitution <- ifelse(Other_Parties$Legal.Constitution == "NULL", NA, Other_Parties$Legal.Constitution) 

Other_Parties$Legal.Constitution <- ifelse(Other_Parties$Legal.Constitution == "", NA, Other_Parties$Legal.Constitution) 

Other_Parties$Legal.Constitution <- toupper(Other_Parties$Legal.Constitution ) 



Security$Type.of.Charge.created <- ifelse(Security$Type.of.Charge.created == "", NA, Security$Type.of.Charge.created) 

Security$Type.of.Charge.created <- ifelse(Security$Type.of.Charge.created == "NULL", NA, Security$Type.of.Charge.created) 

Security$Type.of.Charge.created <- toupper(Security$Type.of.Charge.created ) 


Security$Assets.Type <- ifelse(Security$Assets.Type == "", NA, Security$Assets.Type) 

Security$Assets.Type <- ifelse(Security$Assets.Type == "NULL", NA, Security$Assets.Type) 

Security$Assets.Type <- toupper(Security$Assets.Type ) 


Security$Security.Type <- ifelse(Security$Security.Type == "", NA, Security$Security.Type) 

Security$Security.Type <- ifelse(Security$Security.Type == "NULL", NA, Security$Security.Type) 

Security$Security.Type <- toupper(Security$Security.Type )


Security$Security.Category <- ifelse(Security$Security.Category == "", NA, Security$Security.Category) 

Security$Security.Category <- ifelse(Security$Security.Category == "NULL", NA, Security$Security.Category) 

Security$Security.Category <- toupper(Security$Security.Category) 


Security$Date.of.creation.of.Security.Interest <- ifelse(Security$Date.of.creation.of.Security.Interest == "", NA, 
                                                         Security$Date.of.creation.of.Security.Interest) 

Security$Date.of.creation.of.Security.Interest <- ifelse(Security$Date.of.creation.of.Security.Interest == "NULL", NA, 
                                                         Security$Date.of.creation.of.Security.Interest) 



Security$Currency.of.Security <- ifelse(Security$Currency.of.Security == "", NA, Security$Currency.of.Security) 

Security$Currency.of.Security <- ifelse(Security$Currency.of.Security == "NULL", NA, Security$Currency.of.Security) 

Security$Currency.of.Security <- toupper(Security$Currency.of.Security) 


Security$Date.of.valuation <- ifelse(Security$Date.of.valuation == "", NA, Security$Date.of.valuation) 

Security$Date.of.valuation <- ifelse(Security$Date.of.valuation == "NULL", NA, Security$Date.of.valuation) 

############## Converting Dates into Date Format ########################


Debt$Business_Date <- as.Date(Debt$Business.Date, format="%Y-%m-%d")

Debt$Loan_Submission_Date <- as.Date(Debt$Loan.submission.Date, format="%Y-%m-%d")

Debt$Debt_Start_Date <- as.Date(Debt$Debt.Start.Date, format="%Y-%m-%d")

Debt$Debt_Contract_Date <- as.Date(Debt$Debt.Contract.Date, format="%Y-%m-%d")

Debt$Date_of_Default <- as.Date(Debt$Date.of.Default, format="%Y-%m-%d")

Debt$Date_of_last_repayment <- as.Date(Debt$Date.of.last.repayment, format="%Y-%m-%d")

Debt$Date_of_filing_of_suit <- as.Date(Debt$Date.of.filing.of.suit, format="%Y-%m-%d")

Debt$Debt_Start_Year <-  format(Debt$Debt_Start_Date, "%Y")  
Debt$Debt_Start_Month <-   format(Debt$Debt_Start_Date, "%m") 


Security$Security_Interest_Date <- as.Date(Security$Date.of.creation.of.Security.Interest, format="%Y-%m-%d")

Security$Valuation_Date <- as.Date(Security$Date.of.valuation, format="%Y-%m-%d")
gc()

tmp <- tempfile(pattern = "Debt", tmpdir = getwd(), fileext = ".csv")

write_csv(Debt, tmp)

tmp <- tempfile(pattern = "Other_Parties", tmpdir = getwd(), fileext = ".csv")

write_csv(Other_Parties, tmp)

tmp <- tempfile(pattern = "Security", tmpdir = getwd(), fileext = ".csv")

write_csv(Security, tmp)



############## Extracting a set of unique debt accounts using debt registration number ########################

Debt_Unique <- Debt %>% 
  dplyr::group_by(Debt.Reference.No) %>%
  dplyr::summarise(No_Filings = length(Debt.Reference.No),
                   Sum_Filings = sum(Submission.No),
                   Max_Sanctioned_Amount = max(Sanctioned.Amount, na.rm=1),
                   Max_Outstanding_Amount = max(Total.Outstanding.Amount, na.rm=1),
                   Min_Outstanding_Amount = min(Total.Outstanding.Amount, na.rm=1),
                   Debt_Start_Year = first(Debt_Start_Year),
                   Type.of.debt = first(Type.of.debt))




####### Develop unique list of other parties #########################
Other_Parties_Unique <- Other_Parties %>% 
  dplyr::group_by(Debt.Reference.No, PAN, Relationship) %>%
  dplyr::summarise(Name = first(Party.name),
                    CIN = first(CIN))

Other_Parties_PAN <- Other_Parties %>% 
  dplyr::group_by(PAN) %>%
  dplyr::summarise(Name = first(Party.name),
                   CIN = first(CIN))


Other_Parties_Summary <- Other_Parties_Unique %>% 
  dplyr::group_by(Relationship) %>%
  dplyr::summarise(Number = length(Debt.Reference.No))


Other_Parties_CIN <- Other_Parties %>% dplyr::filter(!is.na(CIN))

Other_Parties_CIN_Unique <- Other_Parties_CIN %>%
  dplyr::group_by(CIN) %>%
  dplyr::summarise(PAN = first(PAN))

Security_Unique <- Security %>% dplyr::group_by(Debt.Reference.No) %>%
  dplyr::summarise(Number = length(Debt.Reference.No))

Other_Parties_Debtor <- Other_Parties_Unique %>% 
  dplyr::filter(Relationship == "DEBTOR") %>%
  dplyr::group_by(Debt.Reference.No, PAN) %>%
  dplyr::summarise(Name = first(Name),
                   Count = length(Debt.Reference.No))

Other_Parties_Debtor_Unique <- Other_Parties_Debtor %>%
  dplyr::group_by(Debt.Reference.No) %>%
  dplyr::summarise(Count = length(Debt.Reference.No),
                   First_Debtor_Name = first(Name),
                   First_Debtor_PAN = first(PAN),
                   Second_Debtor_Name = nth(Name,2,order_by = Name),
                   Second_Debtor_PAN = nth(PAN,2,order_by = PAN),
                   Third_Debtor_Name = nth(Name,3,order_by = Name),
                   Third_Debtor_PAN = nth(PAN,3,order_by = PAN))
                   # Fourth_Debtor_Name = nth(Name,4,order_by = Name),
                   # Fourth_Debtor_PAN = nth(PAN,4,order_by = PAN),
                   # Fifth_Debtor_Name = nth(Name,5,order_by = Name),
                   # Fifth_Debtor_PAN = nth(PAN,5,order_by = PAN),
                   # Sixth_Debtor_Name = nth(Name,6,order_by = Name),
                   # Sixth_Debtor_PAN = nth(PAN,6,order_by = PAN),
                   # Seventh_Debtor_Name = nth(Name,7,order_by = Name),
                   # Seventh_Debtor_PAN = nth(PAN,7,order_by = PAN),
                   # Eighth_Debtor_Name = nth(Name,8,order_by = Name),
                   # Eighth_Debtor_PAN = nth(PAN,8,order_by = PAN),
                   # Ninth_Debtor_Name = nth(Name,9,order_by = Name),
                   # Ninth_Debtor_PAN = nth(PAN,9,order_by = PAN),
                   # Tenth_Debtor_Name = nth(Name,10,order_by = Name),
                   # Tenth_Debtor_PAN = nth(PAN,10,order_by = PAN))

gc()

Other_Parties_Debtor_Unique_Subset <- Other_Parties_Debtor_Unique %>%
  dplyr::select("Debt.Reference.No","First_Debtor_Name" ,"First_Debtor_PAN", "Second_Debtor_Name",
                "Second_Debtor_PAN", "Third_Debtor_Name", "Third_Debtor_PAN" )


Other_Parties_Creditor <- Other_Parties_Unique %>% 
  dplyr::filter(Relationship == "CREDITOR") %>%
  dplyr::group_by(Debt.Reference.No, PAN) %>%
  dplyr::summarise(Count = length(Debt.Reference.No),
                     Creditor_Name = first(Name))


Other_Parties_Creditor$Creditor_PAN <- Other_Parties_Creditor$PAN
Other_Parties_Creditor$PAN <- NULL

Other_Parties_Creditor_Unique <- Other_Parties_Creditor %>%
  dplyr::group_by(Debt.Reference.No) %>%
  dplyr::summarise(Count = length(Debt.Reference.No),
                   First_Creditor_Name = first(Creditor_Name),
                   First_Creditor_PAN = first(Creditor_PAN),
                   Second_Creditor_Name = nth(Creditor_Name,2,order_by = Creditor_Name),
                   Second_Creditor_PAN = nth(Creditor_PAN,2,order_by = Creditor_PAN),
                   Third_Creditor_Name = nth(Creditor_Name,3,order_by = Creditor_Name),
                   Third_Creditor_PAN = nth(Creditor_PAN,3,order_by = Creditor_PAN))
                   # Fourth_Creditor_Name = nth(Creditor_Name,4,order_by = Creditor_Name),
                   # Fourth_Creditor_PAN = nth(Creditor_PAN,4,order_by = Creditor_PAN),
                   # Fifth_Creditor_Name = nth(Creditor_Name,5,order_by = Creditor_Name),
                   # Fifth_Creditor_PAN = nth(Creditor_PAN,5,order_by = Creditor_PAN),
                   # Sixth_Creditor_Name = nth(Creditor_Name,6,order_by = Creditor_Name),
                   # Sixth_Creditor_PAN = nth(Creditor_PAN,6,order_by = Creditor_PAN),
                   # Seventh_Creditor_Name = nth(Creditor_Name,7,order_by = Creditor_Name),
                   # Seventh_Creditor_PAN = nth(Creditor_PAN,7,order_by = Creditor_PAN),
                   # Eighth_Creditor_Name = nth(Creditor_Name,8,order_by = Creditor_Name),
                   # Eighth_Creditor_PAN = nth(Creditor_PAN,8,order_by = Creditor_PAN),
                   # Ninth_Creditor_Name = nth(Creditor_Name,9,order_by = Creditor_Name),
                   # Ninth_Creditor_PAN = nth(Creditor_PAN,9,order_by = Creditor_PAN),
                   # Tenth_Creditor_Name = nth(Creditor_Name,10,order_by = Creditor_Name),
                   # Tenth_Creditor_PAN = nth(Creditor_PAN,10,order_by = Creditor_PAN))

Other_Parties_Creditor_Unique_Subset <- Other_Parties_Creditor_Unique %>%
  dplyr::select("Debt.Reference.No","First_Creditor_Name" ,"First_Creditor_PAN", "Second_Creditor_Name",
                "Second_Creditor_PAN", "Third_Creditor_Name", "Third_Creditor_PAN" )

Other_Parties_Cred_Debt <- left_join(Other_Parties_Creditor_Unique_Subset, Other_Parties_Debtor_Unique_Subset,
                                            by = c("Debt.Reference.No" = "Debt.Reference.No"))


gc()



tmp <- tempfile(pattern = "Other_Parties_Unique", tmpdir = getwd(), fileext = ".csv")

write_csv(Other_Parties_Unique, tmp)

tmp <- tempfile(pattern = "Other_Parties_Cred_Debt", tmpdir = getwd(), fileext = ".csv")

write_csv(Other_Parties_Cred_Debt, tmp)


rm(Other_Parties_Creditor_Unique, Other_Parties_Creditor_Unique_Subset, Other_Parties_Debtor_Unique, Other_Parties_Debtor_Unique_Subset)

rm(Other_Parties, Other_Parties_CIN, Other_Parties_CIN_Unique, Other_Parties_Creditor, Other_Parties_Debtor, Other_Parties_PAN)

############## Extracting details of loan accounts in default  ########################

Debt_Consolidated <- left_join(Debt,Other_Parties_Cred_Debt, 
                               by = c("Debt.Reference.No" = "Debt.Reference.No"))

Debt_Consolidated$Creditor_Debtor <- paste(Debt_Consolidated$First_Creditor_PAN,"_",Debt_Consolidated$First_Debtor_PAN)

Debt_Consolidated <- Debt_Consolidated %>%
  dplyr::mutate(UID = row_number())

rm(Debt)
gc()

# tmp <- tempfile(pattern = "Debt_Consolidated", tmpdir = getwd(), fileext = ".csv")

# write_csv(Debt_Consolidated, tmp)

# Eliminate duplicated filings after identifying them
Debt_Interim <-  Debt_Consolidated %>%
  dplyr::group_by(Debt.Reference.No, Loan.submission.Date) %>%
  dplyr::summarise(No_Dup_Filings = length (Debt.Reference.No),
                   UID = first(UID)) %>%

  
  Debt_Duplicate <- Debt_Interim %>%  dplyr::filter(No_Dup_Filings > 1)

gc()

Debt_Duplicate_Summary <- Debt_Duplicate %>% 
  dplyr::group_by(No_Dup_Filings) %>%
  dplyr::summarise(Count = length(UID))

Debt_Non_Dup <-  Debt_Interim %>%  dplyr::filter(No_Dup_Filings == 1)

Debt_Consol_ND <- Debt_Consolidated %>% dplyr::filter (UID %in% Debt_Non_Dup$UID)

Debt_Consol_D <- Debt_Consolidated %>% dplyr::filter (UID %in% Debt_Duplicate$UID)
 

Debt_Consol_Orig <- Debt_Consolidated

Debt_Consolidated <- rbind(Debt_Consol_D, Debt_Consol_ND)


tmp <- tempfile(pattern = "Debt_Consolidated", tmpdir = getwd(), fileext = ".csv")

write_csv(Debt_Consolidated, tmp)

rm(Debt_Consol_Orig, Debt_Consol_D, Debt_Consol_ND, Debt_Duplicate, Debt_Interim, Debt_Non_Dup)




# # Checking if there are duplicated filngs with different time stamps but same date
# Debt_Duplicate <-  Debt_Consolidated %>%
#   dplyr::group_by(Debt.Reference.No, Loan_Submission_Date) %>%
#   dplyr::summarise(No_Dup_Filings = length (Debt.Reference.No),
#                    UID = first(UID)) %>%
#   dplyr::filter(No_Dup_Filings > 1)
# 
# Debt_Duplicate_Summary <- Debt_Duplicate %>% 
#   dplyr::group_by(No_Dup_Filings) %>%
#   dplyr::summarise(Count = length(UID))
# 
# # Debt_Consol_Duplicated <- duplicated(Debt_Consolidated)
# 
# rm(Debt)
# 
# x <- Debt_Duplicate$Debt.Reference.No[10000]
# 
# y <- Debt_Consolidated %>% dplyr::filter(Debt.Reference.No == x)


# tmp <- tempfile(pattern = "Cleaned", tmpdir = getwd(), fileext = ".csv")

# write_csv(x, tmp)

# Recreating the unique debt file to correct for the number of filings after removing duplicated accounts.

Debt_Unique <- Debt_Consolidated %>% 
  dplyr::group_by(Debt.Reference.No) %>%
  dplyr::summarise(No_Filings = length(Debt.Reference.No),
                   Sum_Filings = sum(Submission.No),
                   Max_Sanctioned_Amount = max(Sanctioned.Amount, na.rm=1),
                   Max_Outstanding_Amount = max(Total.Outstanding.Amount, na.rm=1),
                   Min_Outstanding_Amount = min(Total.Outstanding.Amount, na.rm=1),
                   Debt_Start_Year = first(Debt_Start_Year),
                   Type.of.debt = first(Type.of.debt))

Debt_Unique$Type.of.debt <- gsub(" ","",Debt_Unique$Type.of.debt)

Debt_Unique$Max_Sanctioned_Amount <- ifelse(Debt_Unique$Max_Sanctioned_Amount == -Inf, NA, Debt_Unique$Max_Sanctioned_Amount) 

Debt_Unique$Max_Outstanding_Amount <- ifelse(Debt_Unique$Max_Outstanding_Amount == -Inf, NA, Debt_Unique$Max_Outstanding_Amount) 

Debt_Unique$Min_Outstanding_Amount <- ifelse(Debt_Unique$Min_Outstanding_Amount == -Inf, NA, Debt_Unique$Min_Outstanding_Amount) 

Debt_Yearly <- Debt_Unique %>% 
  dplyr::group_by(Debt_Start_Year) %>%
  dplyr:: summarise(No_of_Accounts = length(No_Filings),
                    Total_Sanctioned_Amount = sum(Max_Sanctioned_Amount, na.rm=1),
                    Avg_Sanctioned_Amount = mean(Max_Sanctioned_Amount, na.rm=1),
                    Total_Outstanding_Amount = sum(Max_Outstanding_Amount, na.rm=1),
                    Avg_Outstanding_Amount = mean(Max_Outstanding_Amount, na.rm=1))


Debt_Yearly <- Debt_Unique %>% 
  dplyr::group_by(Type.of.debt, Debt_Start_Year) %>%
  dplyr:: summarise(No_of_Accounts = length(No_Filings),
                    Total_Sanctioned_Amount = sum(Max_Sanctioned_Amount, na.rm=1),
                    Avg_Sanctioned_Amount = mean(Max_Sanctioned_Amount, na.rm=1),
                    Total_Outstanding_Amount = sum(Max_Outstanding_Amount, na.rm=1),
                    Avg_Outstanding_Amount = mean(Max_Outstanding_Amount, na.rm=1))

# tmp <- tempfile(pattern = "Debt_Yearly", tmpdir = getwd(), fileext = ".csv")

# write_csv(Debt_Yearly, tmp)




Debt_Default <- Debt_Consolidated %>% dplyr::filter(!is.na(Date_of_Default))
  
Debt_Default_Cleaned <- Debt_Default %>% dplyr::filter(Amount.Overdue>0) %>%
  dplyr::filter(Default.amount>0) %>%
  dplyr::filter(Total.Outstanding.Amount>0)




Debt_Default_Cleaned$Default_Year <- format(Debt_Default_Cleaned$Date_of_Default, "%Y")  

Debt_Default_Cleaned$Overdue_to_Outstanding_Ratio <-Debt_Default_Cleaned$Amount.Overdue / Debt_Default_Cleaned$Total.Outstanding.Amount  

Debt_Default_Cleaned$Overdue_to_Outstanding_Ratio <- ifelse(Debt_Default_Cleaned$Overdue_to_Outstanding_Ratio == -Inf, 
                                                            NA, Debt_Default_Cleaned$Overdue_to_Outstanding_Ratio) 

Debt_Default_Cleaned$Overdue_to_Outstanding_Ratio <- ifelse(Debt_Default_Cleaned$Overdue_to_Outstanding_Ratio == Inf, 
                                                            NA, Debt_Default_Cleaned$Overdue_to_Outstanding_Ratio) 

Debt_Default_Cleaned$Overdue_to_Outstanding_Ratio <- ifelse(Debt_Default_Cleaned$Overdue_to_Outstanding_Ratio > 1, 
                                                            1, Debt_Default_Cleaned$Overdue_to_Outstanding_Ratio) 

Debt_Default_Cleaned$Default.amount <- as.numeric(Debt_Default_Cleaned$Default.amount)

Debt_Default_Cleaned$Default_to_Outstanding_Ratio <-Debt_Default_Cleaned$Default.amount / Debt_Default_Cleaned$Total.Outstanding.Amount  

Debt_Default_Cleaned$Default_to_Outstanding_Ratio <- ifelse(Debt_Default_Cleaned$Default_to_Outstanding_Ratio == -Inf, 
                                                            NA, Debt_Default_Cleaned$Default_to_Outstanding_Ratio) 

Debt_Default_Cleaned$Default_to_Outstanding_Ratio <- ifelse(Debt_Default_Cleaned$Default_to_Outstanding_Ratio == Inf, 
                                                            NA, Debt_Default_Cleaned$Default_to_Outstanding_Ratio) 

Debt_Default_Cleaned$Default_to_Outstanding_Ratio <- ifelse(Debt_Default_Cleaned$Default_to_Outstanding_Ratio > 1, 
                                                            NA, Debt_Default_Cleaned$Default_to_Outstanding_Ratio) 


Debt_Default_Aggregate <- Debt_Default_Cleaned %>% group_by(Default_Year) %>%
  dplyr::summarise(Count  = length(Debt.Reference.No),
                   Avg_Overdue_Amount = mean(Amount.Overdue, na.rm=1),
                   Avg_Outstanding_Amount = mean(Total.Outstanding.Amount, na.rm = 1),
                   Avg_Overdue_to_Outstanding_Ratio = sum(Overdue_to_Outstanding_Ratio, na.rm=1)/length(Debt.Reference.No),
                   Avg_Default_to_Outstanding_Ratio = sum(Default_to_Outstanding_Ratio, na.rm=1)/length(Debt.Reference.No))


# tmp <- tempfile(pattern = "Debt_Default_Aggregate", tmpdir = getwd(), fileext = ".csv")

# write_csv(Debt_Default_Aggregate, tmp)





Debt_Default_Unique <- Debt_Default_Cleaned %>% 
  dplyr::group_by(Debt.Reference.No) %>%
  dplyr::summarise(No_Filings = length(Debt.Reference.No),
                   Max_Sanctioned_Amount = max(Sanctioned.Amount, na.rm=1),
                   Max_Outstanding_Amount = max(Total.Outstanding.Amount, na.rm=1),
                   Min_Outstanding_Amount = min(Total.Outstanding.Amount, na.rm=1),
                   Debt_Start_Year = first(Debt_Start_Year),
                   Debt_Default_Date = first(Date_of_Default),
                   Submitter = first(Submitter.Name),
                   Creditor = first(Party.Name))


Debt_Default_Complete_Account <- Debt_Consolidated %>% 
  dplyr:: filter(Debt.Reference.No %in% Debt_Default_Unique$Debt.Reference.No)


Debt_Default_Unique <- Debt_Default_Cleaned %>% 
  dplyr::group_by(First_Debtor_PAN) %>%
  dplyr::summarise(No_Debtors = length(First_Debtor_PAN),
                   Max_Sanctioned_Amount = max(Sanctioned.Amount, na.rm=1),
                   Max_Outstanding_Amount = max(Total.Outstanding.Amount, na.rm=1),
                   Min_Outstanding_Amount = min(Total.Outstanding.Amount, na.rm=1),
                   Debt_Start_Year = first(Debt_Start_Year),
                   Debt_Default_Date = first(Date_of_Default),
                   Submitter = first(Submitter.Name),
                   Creditor = first(Party.Name))

Debt_Default_Complete_Debtor <- Debt_Consolidated %>% 
  dplyr:: filter(First_Debtor_PAN %in% Debt_Default_Unique$First_Debtor_PAN)


Debt_Default_Unique <- Debt_Default %>% 
  dplyr::group_by(Creditor_Debtor) %>%
  dplyr::summarise(No_Debtors = length(First_Debtor_PAN),
                   Max_Sanctioned_Amount = max(Sanctioned.Amount, na.rm=1),
                   Max_Outstanding_Amount = max(Total.Outstanding.Amount, na.rm=1),
                   Min_Outstanding_Amount = min(Total.Outstanding.Amount, na.rm=1),
                   Debt_Start_Year = first(Debt_Start_Year),
                   Debt_Default_Date = first(Date_of_Default),
                   Submitter = first(Submitter.Name),
                   Creditor = first(Party.Name))

Debt_Default_Complete_CD_Pair <- Debt_Consolidated %>% 
  dplyr:: filter(Creditor_Debtor %in% Debt_Default_Unique$Creditor_Debtor)


############## Extracting details of loan accounts that are overdue  ########################

Debt_Overdue <- Debt_Consolidated %>% dplyr::filter(Amount.Overdue>0)

Debt_Overdue_Cleaned <- Debt_Overdue %>% 
#  dplyr::filter(Total.Outstanding.Amount>0) %>% 
  dplyr::filter((Default.amount>=0)|is.na(Default.amount))


Debt_Overdue_Cleaned$Overdue_to_Outstanding_Ratio <-Debt_Overdue_Cleaned$Amount.Overdue / Debt_Overdue_Cleaned$Total.Outstanding.Amount  

Debt_Overdue_Cleaned$Overdue_to_Outstanding_Ratio <- ifelse(Debt_Overdue_Cleaned$Overdue_to_Outstanding_Ratio == -Inf, 
                                                            NA, Debt_Overdue_Cleaned$Overdue_to_Outstanding_Ratio) 

Debt_Overdue_Cleaned$Overdue_to_Outstanding_Ratio <- ifelse(Debt_Overdue_Cleaned$Overdue_to_Outstanding_Ratio == Inf, 
                                                            NA, Debt_Overdue_Cleaned$Overdue_to_Outstanding_Ratio) 

Debt_Overdue_Cleaned$Overdue_to_Outstanding_Ratio <- ifelse(Debt_Overdue_Cleaned$Overdue_to_Outstanding_Ratio > 1, 
                                                            1, Debt_Overdue_Cleaned$Overdue_to_Outstanding_Ratio) 

Debt_Overdue_Cleaned$Default.amount <- as.numeric(Debt_Overdue_Cleaned$Default.amount)

Debt_Overdue_Cleaned$Default_to_Outstanding_Ratio <-Debt_Overdue_Cleaned$Default.amount / Debt_Overdue_Cleaned$Total.Outstanding.Amount  

Debt_Overdue_Cleaned$Default_to_Outstanding_Ratio <- ifelse(Debt_Overdue_Cleaned$Default_to_Outstanding_Ratio == -Inf, 
                                                            NA, Debt_Overdue_Cleaned$Default_to_Outstanding_Ratio) 

Debt_Overdue_Cleaned$Default_to_Outstanding_Ratio <- ifelse(Debt_Overdue_Cleaned$Default_to_Outstanding_Ratio == Inf, 
                                                            NA, Debt_Overdue_Cleaned$Default_to_Outstanding_Ratio) 

Debt_Overdue_Cleaned$Default_to_Outstanding_Ratio <- ifelse(Debt_Overdue_Cleaned$Default_to_Outstanding_Ratio > 1, 
                                                            NA, Debt_Overdue_Cleaned$Default_to_Outstanding_Ratio) 


Debt_Overdue_Aggregate <- Debt_Overdue_Cleaned %>% group_by(Debt_Start_Year) %>%
  dplyr::summarise(Count  = length(Debt.Reference.No),
                   Avg_Overdue_Amount = mean(Amount.Overdue, na.rm=1),
                   Avg_Outstanding_Amount = mean(Total.Outstanding.Amount, na.rm = 1),
                   Avg_Overdue_to_Outstanding_Ratio = sum(Overdue_to_Outstanding_Ratio, na.rm=1)/length(Debt.Reference.No),
                   Avg_Default_to_Outstanding_Ratio = sum(Default_to_Outstanding_Ratio, na.rm=1)/length(Debt.Reference.No))


# tmp <- tempfile(pattern = "Debt_Overdue_Aggregate", tmpdir = getwd(), fileext = ".csv")

# write_csv(Debt_Overdue_Aggregate, tmp)





Debt_Overdue_Unique <- Debt_Overdue_Cleaned %>% 
  dplyr::group_by(Debt.Reference.No) %>%
  dplyr::summarise(No_Filings = length(Debt.Reference.No),
                   Max_Sanctioned_Amount = max(Sanctioned.Amount, na.rm=1),
                   Max_Outstanding_Amount = max(Total.Outstanding.Amount, na.rm=1),
                   Min_Outstanding_Amount = min(Total.Outstanding.Amount, na.rm=1),
                   Debt_Start_Year = first(Debt_Start_Year),
                   Debt_Default_Date = first(Date_of_Default),
                   Submitter = first(Submitter.Name),
                   Creditor = first(Party.Name))


Debt_Overdue_Complete_Account <- Debt_Consolidated %>% 
  dplyr:: filter(Debt.Reference.No %in% Debt_Overdue_Unique$Debt.Reference.No)


Debt_Overdue_Unique <- Debt_Overdue_Cleaned %>% 
  dplyr::group_by(First_Debtor_PAN) %>%
  dplyr::summarise(No_Debtors = length(First_Debtor_PAN),
                   Max_Sanctioned_Amount = max(Sanctioned.Amount, na.rm=1),
                   Max_Outstanding_Amount = max(Total.Outstanding.Amount, na.rm=1),
                   Min_Outstanding_Amount = min(Total.Outstanding.Amount, na.rm=1),
                   Debt_Start_Year = first(Debt_Start_Year),
                   Debt_Default_Date = first(Date_of_Default),
                   Submitter = first(Submitter.Name),
                   Creditor = first(Party.Name))

Debt_Overdue_Complete_Debtor <- Debt_Consolidated %>% 
  dplyr:: filter(First_Debtor_PAN %in% Debt_Overdue_Unique$First_Debtor_PAN)


Debt_Overdue_Unique <- Debt_Overdue_Cleaned %>% 
  dplyr::group_by(Creditor_Debtor) %>%
  dplyr::summarise(No_Debtors = length(First_Debtor_PAN),
                   Max_Sanctioned_Amount = max(Sanctioned.Amount, na.rm=1),
                   Max_Outstanding_Amount = max(Total.Outstanding.Amount, na.rm=1),
                   Min_Outstanding_Amount = min(Total.Outstanding.Amount, na.rm=1),
                   Debt_Start_Year = first(Debt_Start_Year),
                   Debt_Default_Date = first(Date_of_Default),
                   Submitter = first(Submitter.Name),
                   Creditor = first(Party.Name))

Debt_Overdue_Complete_CD_Pair <- Debt_Consolidated %>% 
  dplyr:: filter(Creditor_Debtor %in% Debt_Overdue_Unique$Creditor_Debtor)

Debt_Suit <- Debt_Consolidated %>% dplyr::filter(!is.na(Date_of_filing_of_suit))

Debt_Suit_Unique <- Debt_Suit %>% 
  dplyr::group_by(Debt.Reference.No) %>%
  dplyr::summarise(No_Filings = length(Debt.Reference.No),
                   Max_Sanctioned_Amount = max(Sanctioned.Amount, na.rm=1),
                   Max_Outstanding_Amount = max(Total.Outstanding.Amount, na.rm=1),
                   Min_Outstanding_Amount = min(Total.Outstanding.Amount, na.rm=1),
                   Debt_Start_Year = first(Debt_Start_Year))


Debt_Suit_Complete_Acccount <- Debt_Consolidated %>% 
  dplyr:: filter(Debt.Reference.No %in% Debt_Suit_Unique$Debt.Reference.No)


###################################################################################
############## End - Basic Analysis of Data #####################################
###################################################################################




###################################################################################
############## Start - Analysis of State Transitions in Data ######################
###################################################################################

# This section of the code seeks to classify loans into four categories - Normal-"N", Overdue - "O", Default - "D" and
# undergoing CIRP - "C". Next it seeks to identify differences across these categories in terms of loans outstanding,
# and other corporate characteristics (once CIN PAN matching is done). Then it evaluates transitions across these categories
# with a view of capturing dynamics of this transition.


# Creating a sample where only loan accounts with positive default amounts and positive overdue amounts are included

Debt_Consolidated$Sample <- 1

Debt_Consolidated$Sample <- ifelse(Debt_Consolidated$Amount.Overdue < 0, 0, Debt_Consolidated$Sample)

Debt_Consolidated$Sample <- ifelse(Debt_Consolidated$Default.amount < 0, 0, Debt_Consolidated$Sample)

Debt_Consolidated$Sample <- ifelse(is.na(Debt_Consolidated$Sample), 1, Debt_Consolidated$Sample)

#x <- Debt_Consolidated %>% dplyr::filter(is.na(Sample))
# z <- Debt_Consolidated %>% dplyr::filter(Amount.Overdue < 0)
# y <- Debt_Consolidated %>% dplyr::filter(Default.amount < 0)
# tmp <- tempfile(pattern = "Neg_Overdue", tmpdir = getwd(), fileext = ".csv")
# write_csv(z, tmp)

# Categorize each filing into four states

Debt_Consolidated$Category <- ifelse(Debt_Consolidated$Sample == 1, "N", "X")

Debt_Consolidated$Category <- ifelse((Debt_Consolidated$Sample == 1)&(Debt_Consolidated$Amount.Overdue > 0), "O", 
                                     Debt_Consolidated$Category)

Debt_Consolidated$Category <- ifelse((Debt_Consolidated$Sample == 1)&(!is.na(Debt_Consolidated$Date_of_Default)), "D", 
                                     Debt_Consolidated$Category)

Debt_Consolidated$Category <- ifelse((Debt_Consolidated$Sample == 1)&(!is.na(Debt_Consolidated$Date_of_filing_of_suit)), "S", 
                                     Debt_Consolidated$Category)



Debt_Consolidated$Default_Amount <- as.numeric(Debt_Consolidated$Default.amount)

Debt_Consolidated$Days_past_due <- as.numeric(Debt_Consolidated$Days.past.due)

Debt_Consolidated$Days_past_due <- ifelse(is.na(Debt_Consolidated$Days_past_due),0,Debt_Consolidated$Days_past_due)

Debt_Consolidated$Amount.Overdue_Pct <- Debt_Consolidated$Amount.Overdue/Debt_Consolidated$Total.Outstanding.Amount

Debt_Consolidated$Amount.Overdue_Pct <- ifelse(is.nan(Debt_Consolidated$Amount.Overdue_Pct)|
                                                 is.infinite(Debt_Consolidated$Amount.Overdue_Pct), 
                                          NA,
                                         Debt_Consolidated$Amount.Overdue_Pct)

Debt_Consolidated <- Debt_Consolidated %>% 
  dplyr::arrange(Debt.Reference.No, Loan.submission.Date) %>%
  dplyr::mutate(Index_No = row_number())

Debt_State_Matrix <- Debt_Consolidated %>% 
  dplyr::filter(Sample == 1) %>%
  dplyr::group_by(Category) %>% 
  dplyr::summarise(Count = length(Index_No),
                   Med_Loan_OS = median(Total.Outstanding.Amount, na.rm=1),
                   Med_Default_Amount = median(Default_Amount, na.rm=1),
                   Med_Overdue_Amount = median(Amount.Overdue, na.rm=1),
                   Med_Days_Past_Due = median(Days_past_due, na.rm=1),
                   Avg_Loan_OS = mean(Total.Outstanding.Amount, na.rm=1),
                   Avg_Default_Amount = mean(Default_Amount, na.rm=1),
                   Avg_Overdue_Amount = mean(Amount.Overdue, na.rm=1),
                   Avg_Days_Past_Due = mean(Days_past_due, na.rm=1))


# Checking if any submission no is missing and creating an id
Debt_Unique_Mult_Fil <- Debt_Unique %>% dplyr::filter(No_Filings > 1) %>% filter(!is.na(Debt.Reference.No))

Debt_Unique_Mult_Fil$Sum_Filings_Check = Debt_Unique_Mult_Fil$No_Filings*(Debt_Unique_Mult_Fil$No_Filings + 1)/2

Debt_Unique_Mult_Fil_Mismatch <- Debt_Unique_Mult_Fil %>% 
  dplyr::filter(Sum_Filings_Check != Sum_Filings) %>%
  dplyr::select("Debt.Reference.No" , "No_Filings", "Sum_Filings",  "Sum_Filings_Check" , "Debt_Start_Year" )

DRN_Unique <- Debt_Unique_Mult_Fil$Debt.Reference.No

# The below code takes a lot of time to run, so alternate approach to assigning submission number to the mismatched cases to be
# adopted


# N <- nrow(Debt_Unique_Mult_Fil_Mismatch)
# 
# Debt_Consolidated$Alt_Sub_No <- 1
# 
# for(i in 1:N)
# {
#   x <- Debt_Unique_Mult_Fil_Mismatch$Debt.Reference.No[i]
# 
#   y <- Debt_Consolidated %>% dplyr::filter(Debt.Reference.No == x)
# 
#   z <- y%>%
#     dplyr::arrange(Loan_Submission_Date) %>%
#     dplyr::mutate(Alt_Sub_No = row_number())  %>%
#     dplyr::select("Debt.Reference.No","Submission.No","Alt_Sub_No" ,
#                   "Loan.submission.Date","Party.Name",
#                   "UID")
# 
# 
#   if(i==1)
#     {
# 
#     Debt_Consol_Alt <- z
#     }else
#     {
#       Debt_Consol_Alt <- rbind(Debt_Consol_Alt,z)
#     }
# 
#   if(i%%100 == 0)
#   {
#     print(i)
#     gc()
#   }
# }

  
  
Debt_Mismatch <- Debt_Consolidated %>% 
  dplyr::filter(Debt.Reference.No %in% Debt_Unique_Mult_Fil_Mismatch$Debt.Reference.No)
  
  
Debt_Consolidated_Unique <- Debt_Consolidated %>%
  dplyr::arrange(Index_No) %>%
  dplyr::group_by(Debt.Reference.No)%>%
  dplyr::summarise(Debt_Index_No = first(Index_No))

Debt_Consolidated$Debt_Index_No <- Debt_Consolidated_Unique$Debt_Index_No[match(Debt_Consolidated$Debt.Reference.No, 
                                                                                Debt_Consolidated_Unique$Debt.Reference.No)]

Debt_Consolidated$Alt_Sub_No <- Debt_Consolidated$Index_No - Debt_Consolidated$Debt_Index_No + 1

# x <- Debt_Consolidated %>% dplyr::select("Debt.Reference.No","Submission.No","Loan.submission.Date",
#                                      "Alt_Sub_No","Index_No","Debt_Index_No")
# 
# y <- x %>% dplyr::filter(Submission.No != Alt_Sub_No)
# 
# z<- x %>% dplyr::filter(Debt.Reference.No %in% y$Debt.Reference.No)

# Loan_Submission_Date Date_of_last_repayment Total.Outstanding.Amount Category Amount.Overdue Date_of_Default

Debt_Consolidated <- slide(Debt_Consolidated, Var = 'Category', TimeVar = 'Alt_Sub_No', 
                                       NewVar = 'Category_lagged',GroupVar = "Debt.Reference.No",
                                       slideBy = -1, keepInvalid = TRUE)

# y <- Debt_Consolidated %>% dplyr::select("Debt.Reference.No","Submission.No","Loan.submission.Date",
#                                          "Alt_Sub_No","Index_No","Debt_Index_No", "Category", "Category_lagged") %>%
#   dplyr::filter(Debt.Reference.No %in% Debt_Default$Debt.Reference.No)

Debt_Consolidated$Default_Amount <- ifelse(is.na(Debt_Consolidated$Default_Amount), 0, Debt_Consolidated$Default_Amount)

Debt_Consolidated$Default_Amount <- ifelse(is.nan(Debt_Consolidated$Default_Amount), 0, Debt_Consolidated$Default_Amount)


Debt_Consolidated$Amount.Overdue <- ifelse(is.na(Debt_Consolidated$Amount.Overdue), 0, Debt_Consolidated$Amount.Overdue)

Debt_Consolidated$Amount.Overdue <- ifelse(is.nan(Debt_Consolidated$Amount.Overdue), 0, Debt_Consolidated$Amount.Overdue)


Debt_Consolidated <- slide(Debt_Consolidated, Var = 'Total.Outstanding.Amount', TimeVar = 'Alt_Sub_No', 
                           NewVar = 'Total.Outstanding.Amount_lagged',GroupVar = "Debt.Reference.No",
                           slideBy = -1, keepInvalid = TRUE)

Debt_Consolidated <- slide(Debt_Consolidated, Var = 'Amount.Overdue', TimeVar = 'Alt_Sub_No', 
                           NewVar = 'Amount.Overdue_lagged',GroupVar = "Debt.Reference.No",
                           slideBy = -1, keepInvalid = TRUE)

Debt_Consolidated <- slide(Debt_Consolidated, Var = 'Loan_Submission_Date', TimeVar = 'Alt_Sub_No', 
                           NewVar = 'Loan_Submission_Date_lagged',GroupVar = "Debt.Reference.No",
                           slideBy = -1, keepInvalid = TRUE)

Debt_Consolidated <- slide(Debt_Consolidated, Var = 'Default_Amount', TimeVar = 'Alt_Sub_No', 
                           NewVar = 'Default_Amount_lagged',GroupVar = "Debt.Reference.No",
                           slideBy = -1, keepInvalid = TRUE)


# Creating an new lagged category of 1 for the first submission of an account
Debt_Consolidated$Category_lagged <- ifelse(is.na(Debt_Consolidated$Category_lagged), "1", Debt_Consolidated$Category_lagged)

Debt_Consolidated$Category_Transition <- paste(Debt_Consolidated$Category_lagged,"_",Debt_Consolidated$Category)

Debt_Consolidated$Outstanding_Amount_Change <- Debt_Consolidated$Total.Outstanding.Amount- 
  Debt_Consolidated$Total.Outstanding.Amount_lagged

Debt_Consolidated$Overdue_Amount_Change <- Debt_Consolidated$Amount.Overdue- Debt_Consolidated$Amount.Overdue_lagged

Debt_Consolidated$Default_Amount_Change <- Debt_Consolidated$Default_Amount- Debt_Consolidated$Default_Amount_lagged

# Debt_Consolidated$Outstanding_Amount_Change <- ifelse(is.na(Debt_Consolidated$Outstanding_Amount_Change), 
#                                                       Debt_Consolidated$Total.Outstanding.Amount, 
#                                                       Debt_Consolidated$Outstanding_Amount_Change)
# 
# Debt_Consolidated$Overdue_Amount_Change <- ifelse(is.na(Debt_Consolidated$Overdue_Amount_Change),  
#                                                       Debt_Consolidated$Amount.Overdue,
#                                                       Debt_Consolidated$Overdue_Amount_Change)
# 
# Debt_Consolidated$Default_Amount_Change <- ifelse(is.na(Debt_Consolidated$Default_Amount_Change),
#                                                   Debt_Consolidated$Default_Amount,
#                                                   Debt_Consolidated$Default_Amount_Change)

# tmp <- tempfile(pattern = "Debt_Consolidated", tmpdir = getwd(), fileext = ".csv")

# write_csv(Debt_Consolidated, tmp)


y <- Debt_Consolidated %>% 
  dplyr::filter(Debt.Reference.No == "00000010001677726") %>%
  dplyr::select("Submitter.Name","Debt.Reference.No","Loan.submission.Date",  "Loan_Submission_Date_lagged" ,
                "Party.Name","Debt.Start.Date",
                "Total.Outstanding.Amount", "Total.Outstanding.Amount_lagged", "Outstanding_Amount_Change" ,
                "Amount.Overdue", "Amount.Overdue_lagged", "Overdue_Amount_Change" , "Amount.Overdue_Pct",
                "Default.amount", "Default_Amount_lagged", "Default_Amount_Change" ,
                "Date.of.Default",
                "Days.past.due",
                "Category", "Category_lagged")

z <- Debt_Unique %>% dplyr::filter(No_Filings > 20) %>%
  dplyr::filter(Debt.Reference.No %in% Debt_Default$Debt.Reference.No)

Debt_Transition_Summary <- Debt_Consolidated %>%
  dplyr::filter(Sample == 1)%>%
  dplyr::group_by(Category_Transition) %>% 
  dplyr::summarise(Number = length (UID),
                   Avg_Outstanding_Amount = mean(Total.Outstanding.Amount, na.rm=1),
                   Median_Outstanding_Amount = median(Total.Outstanding.Amount, na.rm=1),
                   Min_Outstanding_Amount = min(Total.Outstanding.Amount, na.rm=1),
                   Max_Outstanding_Amount = max(Total.Outstanding.Amount, na.rm=1),
                   Avg_Overdue_Pct = mean(Amount.Overdue_Pct, na.rm=1),
                   Median_Overdue_Pct = median(Amount.Overdue_Pct, na.rm=1),
                   Min_Overdue_Pct = min(Amount.Overdue_Pct, na.rm=1),
                   Max_Overdue_Pct = max(Amount.Overdue_Pct, na.rm=1),
                   Avg_Outstanding_Amount_Change = mean(Outstanding_Amount_Change, na.rm=1),
                   Median_Outstanding_Amount_Change = median(Outstanding_Amount_Change, na.rm=1),
                   Min_Outstanding_Amount_Change = min(Outstanding_Amount_Change, na.rm=1),
                   Max_Outstanding_Amount_Change = max(Outstanding_Amount_Change, na.rm=1),
                   Avg_Overdue_Amount_Change = mean(Overdue_Amount_Change, na.rm=1),
                   Median_Overdue_Amount_Change = median(Overdue_Amount_Change, na.rm=1),
                   Min_Overdue_Amount_Change = min(Overdue_Amount_Change, na.rm=1),
                   Max_Overdue_Amount_Change = max(Overdue_Amount_Change, na.rm=1),
                   Avg_Default_Amount_Change = mean(Default_Amount_Change, na.rm=1),
                   Median_Default_Amount_Change = median(Default_Amount_Change, na.rm=1),
                   Min_Default_Amount_Change = min(Default_Amount_Change, na.rm=1),
                   Max_Default_Amount_Change = max(Default_Amount_Change, na.rm=1),
                   Avg_Days_Past_Due = mean(Days_past_due, na.rm=1),
                   Median_Days_Past_Due = median(Days_past_due, na.rm=1),
                   Min_Days_Past_Due = min(Days_past_due, na.rm=1),
                   Max_Days_Past_Due = max(Days_past_due, na.rm=1))



Debt_Transition_Summary_Yearly <- Debt_Consolidated %>%
  dplyr::filter(Sample == 1)%>%
  dplyr::group_by(Category_Transition, Year) %>% 
  dplyr::summarise(Number = length (UID),
                   Avg_Outstanding_Amount = mean(Total.Outstanding.Amount, na.rm=1),
                   Median_Outstanding_Amount = median(Total.Outstanding.Amount, na.rm=1),
                   Min_Outstanding_Amount = min(Total.Outstanding.Amount, na.rm=1),
                   Max_Outstanding_Amount = max(Total.Outstanding.Amount, na.rm=1),
                   Avg_Overdue_Pct = mean(Amount.Overdue_Pct, na.rm=1),
                   Median_Overdue_Pct = median(Amount.Overdue_Pct, na.rm=1),
                   Min_Overdue_Pct = min(Amount.Overdue_Pct, na.rm=1),
                   Max_Overdue_Pct = max(Amount.Overdue_Pct, na.rm=1),
                   Avg_Outstanding_Amount_Change = mean(Outstanding_Amount_Change, na.rm=1),
                   Median_Outstanding_Amount_Change = median(Outstanding_Amount_Change, na.rm=1),
                   Min_Outstanding_Amount_Change = min(Outstanding_Amount_Change, na.rm=1),
                   Max_Outstanding_Amount_Change = max(Outstanding_Amount_Change, na.rm=1),
                   Avg_Overdue_Amount_Change = mean(Overdue_Amount_Change, na.rm=1),
                   Median_Overdue_Amount_Change = median(Overdue_Amount_Change, na.rm=1),
                   Min_Overdue_Amount_Change = min(Overdue_Amount_Change, na.rm=1),
                   Max_Overdue_Amount_Change = max(Overdue_Amount_Change, na.rm=1),
                   Avg_Default_Amount_Change = mean(Default_Amount_Change, na.rm=1),
                   Median_Default_Amount_Change = median(Default_Amount_Change, na.rm=1),
                   Min_Default_Amount_Change = min(Default_Amount_Change, na.rm=1),
                   Max_Default_Amount_Change = max(Default_Amount_Change, na.rm=1),
                   Avg_Days_Past_Due = mean(Days_past_due, na.rm=1),
                   Median_Days_Past_Due = median(Days_past_due, na.rm=1),
                   Min_Days_Past_Due = min(Days_past_due, na.rm=1),
                   Max_Days_Past_Due = max(Days_past_due, na.rm=1))


# tmp <- tempfile(pattern = "Debt_Transition_Summary", tmpdir = getwd(), fileext = ".csv")

# write_csv(Debt_Transition_Summary, tmp)

# tmp <- tempfile(pattern = "Debt_Transition_Summary_Yearly", tmpdir = getwd(), fileext = ".csv")

# write_csv(Debt_Transition_Summary_Yearly, tmp)




# Analyze only the transitions where there is a change in cateogry to evaluate how long an account spends in a category




Debt_Consolidated_Transition <- Debt_Consolidated %>%
  dplyr::filter(!(Category_Transition %in% c("N _ N","O _ O","D _ D","S _ S")))

# Recreate index number to facilitate lagging
Debt_Consolidated_Transition <- Debt_Consolidated_Transition %>% 
  dplyr::arrange(Debt.Reference.No, Loan.submission.Date) %>%
  dplyr::mutate(Index_No = row_number())


Debt_Consolidated_Transition_Unique <- Debt_Consolidated_Transition %>%
  dplyr::arrange(Index_No) %>%
  dplyr::group_by(Debt.Reference.No)%>%
  dplyr::summarise(Debt_Index_No = first(Index_No))

Debt_Consolidated_Transition$Debt_Index_No <- Debt_Consolidated_Transition_Unique$Debt_Index_No[match(Debt_Consolidated_Transition$Debt.Reference.No, 
                                                                                                      Debt_Consolidated_Transition_Unique$Debt.Reference.No)]

Debt_Consolidated_Transition$Alt_Sub_No <- Debt_Consolidated_Transition$Index_No - Debt_Consolidated_Transition$Debt_Index_No + 1


Debt_Consolidated_Transition <- slide(Debt_Consolidated_Transition, Var = 'Loan_Submission_Date', TimeVar = 'Alt_Sub_No', 
                                      NewVar = 'Loan_Submission_Date_initial',GroupVar = "Debt.Reference.No",
                                      slideBy = -1, keepInvalid = TRUE)



