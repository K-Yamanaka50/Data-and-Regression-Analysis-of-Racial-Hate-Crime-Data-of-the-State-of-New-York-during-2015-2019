#STATSGROUPHW
#Yvonne, Keanu, Bowen, Francisco
#HW #5
#Stats115


#DATA Ethnicity
datahatecrime <- read.csv("/Users/katana/Downloads/NewDataStatGroup.csv")
View(datahatecrime)#view data
Names<-(datahatecrime) #rename
Names#view names


#3 Our variables are in the proper format, labels are shown from website, no missing values
#All variables are in the correct format
#No codevbook as needed as chart shows names and labels

#Exercise4 (cleaning dataset)
#Our data is in dataframe


#Exercise5(UnderstandingDateSet)
#1a #No missing values


#1b  No difference as we are not missing values :)



#2
library(dplyr)
First10 <-datahatecrime %>% select(c("Crime.Type","Year","County","Anti.White","Anti.Black","Anti.American.Indian.Alaskan.Native","Anti.Asian","Anti.Native.Hawaiian.Pacific.Islander", "Anti.Multi.Racial.Groups", "Anti.Jewish")) #code for most important data 
First10 #Data most important to us
View(First10) #view data

#3
First7 <-datahatecrime %>% select(c("Crime.Type","Year","County","Anti.Male","Anti.Female","Anti.Transgender","Anti.Gender.Identity.Expression")) #Code for first 7 subset
First7 #Subsetting data first 7 
View(First7) #viewing data
head(datahatecrime, 7) 

#4
summary(First10) #summary of our main data points that we are using
#Most Min and Max are different
#Crime Type doesnt have mean, min or max values because the values are not numerical. Its a categorical variable
# and the largest proportion is length=605
# For year, the mean is 2014, the min is 2010, the max is 2019. It aligns with our data, as the intial year 
# we are pulling our data from starts at 2010 and ends at 2019. 
#County also does not have mean, min, or max because the values are categorical. largest proportion: length=605
# antiwhite: The min is 0, the max is 16, and the mean is 0.3686. In some instances for anti-white hate crimes there were reported hate crimes and in other times, not.
#antiblack: The min is 0, the max is 18, and the mean is 1.694. In some instances for anti-black hate crimes there were reported hate crimes and in other times, not.
#anti american indian alaskan native: The min is 0, the max is 1, and the mean is 0.006612. In some instances for anti american indian alaskan native hate crimes there were reported hate crimes and in other times, not.
# antiasian: The min is 0, the max is 8, and the mean is 0. 1636. In some instances for anti-asian hate crimes there were reported hate crimes and in other times, not.
# anti native hawaiian pacific islander: The min is 0, the max is 0, and the mean is 0. There were no reported hate crimes for this ethnic group.
# antimultiracialgroups: The min is 0, the max is 4, and the mean is 0.07934. In some instances for anti-multiracialgroups hate crimes there were reported hate crimes and in other times, not.
# antijewish: The min is 0, the max is 90, and the mean is 4.145. In some instances for anti-jewish hate crimes there were reported hate crimes and in other times, not.





