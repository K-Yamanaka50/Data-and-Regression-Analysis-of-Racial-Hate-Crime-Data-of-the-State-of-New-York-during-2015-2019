#Keanu Shui
#Stats 115
#Professor Francisco

Statshw <- c(0.50,	4.25,	5, 6,	7.25,
      1.75,	4.25,	5.25,	6, 7.25,
      2, 4.25, 5.25,	6.25,	7.25,
      2.25,	4.25,	5.5,	6.25,	7.75,
      2.25,	4.5,	5.5,	6.5,	8,
      2.5,	4.75,	5.5,	6.5, 8.25,
      2.75,	4.75,	5.75,	6.5, 9.5,
      3.25,	4.75,	5.75,	6.75, 9.5,
      3.75,	5, 6,	6.75,	9.75,
      3.75,	5, 6, 6.75,	10.75) #created vector to simply things
Statshw #ran code
mean(Statshw)  #find mean of dataset, the mean is 5.51

sd(Statshw) #standard deviation is 2.145807

#histogram turn data into data frame, df <- as.data.frame(Statshw). the df is dataframe, 
#name doesnt matter, 

df <- as.data.frame(Statshw) #turning vector into dataframe, which has 1 column

library(ggplot2)
ggplot(data=df, aes(Statshw, y=..density..))+#dataframe and aestheic, ".." is for not a variable
  geom_histogram(bins=9, color="green")+#Bins are number of bars in history, color adds separation
    geom_density() #creates density curve through the midpoints

1-pnorm(0.2749548305) #For part F on Homework calculation

#Citations for Code help: Went to Syd's mentor session

