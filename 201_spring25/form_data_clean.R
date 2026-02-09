form_data <- read.csv("~/Dropbox/WilliamsTeaching/tutorials/201_spring25/form_data.csv")
form_data <- form_data[-c(6,14),]
form_data_anonymous <- form_data[,c(9, 17:29)]

names(form_data_anonymous) <- c("year", "pets", "sleep.semester", "sleep.summer", "cups.coffee", "height", "sports",
                                "music", "favorite.coffee", "favorite.dining", "campus.summer", "div.three", "labs",
                                "route2")

Stat 201_ Getting to know you survey (Spring) (Responses) - Form Responses 1 (1).csv
write.csv(form_data_anonymous, file="form_data_anonymous.csv", row.names = F)


form_data <- form_data_anonymous
