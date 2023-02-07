library(ggplot2)
library(gridExtra)
library(tidyr)
library(dplyr)
library(raster)
library(sp)
library(readr)


setwd("~/Desktop/UNI/FOOD_AC_RS/Project")

#Load Datasets: 
###############

#2020
Mberg_2020 <- read_delim("Data/Climate/Muencheberg2020.csv", 
                         delim = ";", escape_double = FALSE, locale = locale(decimal_mark = ","), 
                         trim_ws = TRUE)
Mberg_2020 <- as.data.frame(Mberg_2020)
Mberg_2020 <- Mberg_2020[c(1:7)]

#2019
Mberg_2019 <- read_delim("Data/Climate/Muencheberg2019.csv", 
                         delim = ";", escape_double = FALSE, locale = locale(decimal_mark = ","), 
                         trim_ws = TRUE)
Mberg_2019 <- as.data.frame(Mberg_2019)
Mberg_2019 <- Mberg_2019[c(1:7)]

#2018
Mberg_2018 <- read_csv("Data/Climate/WS_MUENCHEBERG_2018.csv")
Mberg_2018 <- as.data.frame(Mberg_2018)
Mberg_2018 <- Mberg_2018[c(1:7)]


#2017
Mberg_2017 <- read_csv("Data/Climate/WS_MUNCHEBERG_2017.csv")
Mberg_2017 <- as.data.frame(Mberg_2017)
Mberg_2017 <- Mberg_2017[c(1:7)]

#2016
Mberg_2016 <- read_delim("Data/Climate/Muencheberg2016.csv", 
                         delim = ";", escape_double = FALSE, locale = locale(decimal_mark = ","), 
                         trim_ws = TRUE)
Mberg_2016 <- as.data.frame(Mberg_2016)
Mberg_2016 <- Mberg_2016[c(1:7)]

#2015
Mberg_2015 <- read_delim("Data/Climate/Muencheberg2015.csv", 
                              delim = ";", escape_double = FALSE, locale = locale(decimal_mark = ","), 
                              trim_ws = TRUE)
Mberg_2015 <- as.data.frame(Mberg_2015)
Mberg_2015 <- Mberg_2015[c(1:7)]


#2014
Mberg_2014 <- read_csv("Data/Climate/Muencheberg2014.csv")
Mberg_2014 <- as.data.frame(Mberg_2014)
Mberg_2014 <- Mberg_2014[c(1:7)]

#2013
Mberg_2013 <- read_delim("Data/Climate/Muencheberg2013.csv",                          
                        delim = ";", escape_double = FALSE, trim_ws = TRUE)
Mberg_2013 <- as.data.frame(Mberg_2013)
Mberg_2013 <- Mberg_2013[c(1:7)]

#2012
Mberg_2012 <- read_delim("Data/Climate/Muencheberg2012.csv", 
                         delim = ";", escape_double = FALSE, trim_ws = TRUE)
Mberg_2012 <- as.data.frame(Mberg_2012)
Mberg_2012 <- Mberg_2012[c(1:7)]

#2011
Mberg_2011 <- read_delim("Data/Climate/Muencheberg2011.csv", 
                         delim = ";", escape_double = FALSE, trim_ws = TRUE)
Mberg_2011 <- as.data.frame(Mberg_2011)
Mberg_2011 <- Mberg_2011[c(1:7)]


Mberg_all <- bind_rows(Mberg_2011,Mberg_2012, Mberg_2013, Mberg_2014, Mberg_2015,Mberg_2016, Mberg_2017, Mberg_2018, Mberg_2019, Mberg_2020)


write.csv(Mberg_2011, file ="Data/Climate/Mberg_2011.csv", quote=TRUE, sep=";", dec=".", na="NA")
write.csv(Mberg_2012, file ="Data/Climate/Mberg_2012.csv", quote=TRUE, sep=";", dec=".", na="NA")
write.csv(Mberg_2013, file ="Data/Climate/Mberg_2013.csv", quote=TRUE, sep=";", dec=".", na="NA")
write.csv(Mberg_2014, file ="Data/Climate/Mberg_2014.csv", quote=TRUE, sep=";", dec=".", na="NA")
write.csv(Mberg_2015, file ="Data/Climate/Mberg_2015.csv", quote=TRUE, sep=";", dec=".", na="NA")
write.csv(Mberg_2016, file ="Data/Climate/Mberg_2016.csv", quote=TRUE, sep=";", dec=".", na="NA")
write.csv(Mberg_2017, file ="Data/Climate/Mberg_2017.csv", quote=TRUE, sep=";", dec=".", na="NA")
write.csv(Mberg_2018, file ="Data/Climate/Mberg_2018.csv", quote=TRUE, sep=";", dec=".", na="NA")
write.csv(Mberg_2019, file ="Data/Climate/Mberg_2019.csv", quote=TRUE, sep=";", dec=".", na="NA")
write.csv(Mberg_2020, file ="Data/Climate/Mberg_2020.csv", quote=TRUE, sep=";", dec=".", na="NA")

