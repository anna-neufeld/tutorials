form_data <- read.csv("~/Dropbox/WilliamsTeaching/tutorials/201_fall25/form_data.csv")
form_data <- form_data[-c(1,6),]
form_data_anonymous <- form_data[,c(17:29)]

names(form_data_anonymous) <- c("pets", "sleep_semester", "sleep_school", "cups.coffee", "height", "sports",
                                "music", "favorite.coffee", "favorite.dining", "campus.summer", "div.three", "labs",
                                "route2")

write.csv(form_data_anonymous, file="form_data_anonymous.csv")
