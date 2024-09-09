form_data <- read.csv("form_data.csv")
form_data_anonymous <- form_data[,-c(1,2,3,4,5,6,7,8)]

names(form_data_anonymous) <- 
  c("year", "previous_mathstat", "previous_stat", "previous_r",
    "histogram", "scatterplot", "boxplot", "random_var",
    "expected_val", "var_sd", "stat_param", "normal", "t",
    "sampling", "CLT", "CI", "hypothesis_test", "p_value",
    "linear_reg", "multiple_reg", "nervous", "OH_TA", "pets",
    "sleep_hours_year", "sleep_hours_summer", "sports", "dining_hall",
    "arrive")

form_data_anonymous <- form_data_anonymous[,-c(21,22)]
save(form_data_anonymous, file="form_data_anonymous.csv")








