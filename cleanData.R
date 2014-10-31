
## Loading data
nobel <- read.csv("nobelData.csv", header = TRUE)

str(nobel$born) ## Notice that is a factor variable

## Converting to character of only the year of birth
nobel$born <- as.character(nobel$born)
str(nobel$born)

nobel$born <- substr(nobel$born, 1, 4)
str(nobel$born)

## Converting to integer
nobel$born <- as.numeric(nobel$born)
str(nobel$born)

## Computing the age at moment of prize
nobel$age <- nobel$year - nobel$born
head(nobel$age)
str(nobel$age)

## Verifying maximum and minimum
max(nobel$age, na.rm = TRUE)
min(nobel$age, na.rm = TRUE)

## There is a problem: there are laureates that are organizations
## Hence do not have age
## We will remove those values
nobel <- subset(nobel, age < 100)
max(nobel$age) ## Hurwicz at 90
min(nobel$age) ## Malala at 17

## Relevant variables
## There are variables that are not relevant to numeric analysis
## Let us define the relevant ones
myvars <- c("id", "firstname", "surname", "born", "died", "bornCountry", 
            "bornCountryCode", "gender", "year", "category", "share", "age")

nobel <- nobel[myvars] ## Subsetting to the relevant variables
write.csv(nobel, file = "nobel.csv")
