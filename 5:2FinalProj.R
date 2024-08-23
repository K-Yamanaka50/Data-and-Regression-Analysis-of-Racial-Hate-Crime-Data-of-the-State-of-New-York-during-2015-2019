#STATSGROUPHW
#Yvonne, Keanu, Bowen, Francisco, Ivette
#HW #5
#Stats115


#DATA Ethnicity
datahatecrime <- read.csv("/Users/katana/Downloads/NewDataStatGroup.csv")
View(datahatecrime)#view data
Names<-(datahatecrime) #rename
Names#view names

newdataset <-subset(datahatecrime, datahatecrime$Crime.Type!="Recode Me")
#"Recode Me" in codebook was an error and will need to be subsetted, since factored, subset is easier now


class(newdataset$Crime.Type) #character 
newdataset$Crime.Type <- as.factor(newdataset$Crime.Type) #making it into a factor, to make categorical
class(newdataset$Crime.Type) #factor


Crime.Type <- table(newdataset$Crime.Type) #renaming table
Percent_CrimeType <- prop.table(Crime.Type) * 100  #need to put table insides, multiple by 100, from class function
Poptotal_Crime.Type <- as.data.frame(cbind(Percent_CrimeType, Crime.Type)) #notes from class, did this in office hours
Poptotal_Crime.Type #ran code, output from command shows proportion


newdataset$newcounty <- as.factor(newdataset$County) #making it into a factor to separate categorically easier.




#Exercise4 (cleaning dataset)
#Our data is in dataframe


#Exercise5(UnderstandingDateSet)
#1a #No missing values


#1b  No difference as we are not missing values 



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

datahatecrime$County=as.factor(datahatecrime$County) #Being read as characters, converted to numerical values, for County
datahatecrime$County%>%group_by(datahatecrime$County)%>%count() #continuation of code 
summarize(datahatecrime$County) #continuation of code
summary(datahatecrime$County) #continuation of code specifically County

datahatecrime$Crime.Type=as.factor(datahatecrime$Crime.Type) #Being read as characters, converted to numerical values, for Crime type
datahatecrime$Crime.Type%>%group_by(datahatecrime$Crime.Type)%>%count() #continuation of code 
summarize(datahatecrime$Crime.Type) #continuation of code
summary(datahatecrime$Crime.Type) #continuation of code specifically Crime type


#4
summary(First10) #summary of our main data points that we are using

qt(.98, 29) 





#New Stats Final Code 
#Changing to regression line, turning all to just number of hate crimes, combining all collums about hate crimes
#Would remove hate crimes racial to fit model
datahatecrime$OverallHateCrimesNumber<- rowSums(cbind(datahatecrime$Anti.Hispanic, datahatecrime$Anti.Asian, datahatecrime$Anti.Black)) 
datahatecrime$OverallHateCrimesNumber #to View all columns

datahatecrime$Trumpelec <- ifelse(datahatecrime$Year > 2016 , 1, 0)

datahatecrime$Trumpelec <- as.factor(datahatecrime$Trumpelec)

datahatecrime$Year <- as.factor(datahatecrime$Year)

datahatecrime$Anti.Black <- ifelse(datahatecrime$Anti.Black > 0, 1, 0)

datahatecrime$Anti.Hispanic <- ifelse(datahatecrime$Anti.Hispanic > 0, 2, 0)

datahatecrime$Anti.Asian <- ifelse(datahatecrime$Anti.Asian > 0, 3, 0)

final_model <- lm(OverallHateCrimesNumber ~ Crime.Type + Anti.Black + Anti.Asian + Anti.Hispanic + Trumpelec, data = datahatecrime)
summary(final_model)
library(ggplot2)

model3 <- ggplot(datahatecrime, aes(Year, OverallHateCrimesNumber))+
  geom_boxplot()

print(model3)

ggplot(datahatecrime, aes(Trumpelec, OverallHateCrimesNumber)) +
  geom_boxplot()
