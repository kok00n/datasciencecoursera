dataset <- read.csv('hw1_data.csv')
colnames(dataset)

dataset[1:2,]
head(dataset, 2)

nrow(dataset)

tail(dataset, 2)

dataset[47, "Ozone"]

sum(is.na(dataset$Ozone))

summary(dataset)

mean(dataset$Ozone, na.rm = TRUE)

mean(dataset[dataset$Ozone > 31 & dataset$Temp > 90, "Solar.R"],
     na.rm = TRUE)

mean(dataset[dataset$Month == 6, "Temp"],
     na.rm = TRUE)

max(dataset[dataset$Month == 5, "Ozone"],
    na.rm = TRUE)
