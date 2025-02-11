form_data_s25 <- read.csv("~/stat202_tutorials/Week1/form_data_s25.csv", header=T)
form_data_anon <- form_data_s25[,-c(1,2,3,4,5,6,7,8,13:29,30,31, 32)]
names(form_data_anon) <- c(
  "year", "prev.math.stat", "prev.stat", "r.exper","pets",
  "sleep.semester", "sleep.winterstudy", "cups.coffee", "height", "sports", "musical",
  "favorite.coffee", "favorite.dining", "campus.winterstudy", "route2.side"
)
form_data_anon <- form_data_anon[,-1] 

write.csv(form_data_anon, file="form_data_anonymous.csv", row.names=FALSE)


library(tidyverse)

#### CLEANING
FIND ONE PLACE WHERE THIS IS NEEDED


### ONE QUANTITATIVE:
form_data_anon %>% summarize(mean(cups.coffee), sd(cups.coffee), median(cups.coffee))
ggplot(data=form_data_anon, aes(x=cups.coffee))+geom_histogram()
## Discuss SKEW. 

### One categorical
form_data_anon %>% group_by(sports) %>% summarize(n())

### One quantititave, one categorical
ggplot(data=form_data_anon, aes(x=sports, y=cups.coffee))+geom_boxplot()

form_data_anon %>% group_by(sports) %>% summarize(mean(cups.coffee), sd(cups.coffee), median(cups.coffee))

### Two quantitative

ggplot(data=form_data_anon, aes(x=sleep.semester, y=sleep.winterstudy))+geom_point()
ggplot(data=form_data_anon, aes(x=sleep.semester, y=cups.coffee))+geom_point()


### Two categorical 
form_data_anon %>% group_by(sports, musical) %>% summarize(n())
form_data_anon %>% select(sports, musical) %>% table()

form_data_anon %>% group_by(route2.side, favorite.dining) %>% summarize(n())
form_data_anon %>% select(route2.side, favorite.dining) %>% table()

form_data_anon %>% select(route2.side,year) %>% table()


form_data_anon %>% select(musical) %>% table()

table(form_data_anon$musical)
table(form_data_anon$musical, )

