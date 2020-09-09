## Create time series data

library(tidyverse)

day_count <- seq(1, 7*8, by = 1)
day <- rep(c("Sunday", "Monday", "Tuesday", "Wednesday", 
             "Thursday", "Friday", "Saturday"), 8)
day_num <- rep(seq(1,7, by = 1), 8)
Week <- rep(seq(1, 8, by = 1), 7)
Week <- sort(Week)

increase <- rnorm(n = 7, mean = 0.3, sd = 0.4)

MVMT_wk1 <- c(30, 32, 35, 36, 35.4, 33, 31)
MVMT_wk2 <- MVMT_wk1 + rnorm(n=1, mean = increase[1], sd = 0.1)
MVMT_wk3 <- MVMT_wk2 + rnorm(n=1, mean = increase[2], sd = 0.1)
MVMT_wk4 <- MVMT_wk3 + rnorm(n=1, mean = increase[3], sd = 0.1)
MVMT_wk5 <- MVMT_wk4 + rnorm(n=1, mean = increase[4], sd = 0.1)
MVMT_wk6 <- MVMT_wk5 + rnorm(n=1, mean = increase[5], sd = 0.1)
MVMT_wk7 <- MVMT_wk6 + rnorm(n=1, mean = increase[6], sd = 0.1)
MVMT_wk8 <- MVMT_wk7 + rnorm(n=1, mean = increase[7], sd = 0.1)


MVMT <- c(MVMT_wk1,
          MVMT_wk2,
          MVMT_wk3,
          MVMT_wk4,
          MVMT_wk5,
          MVMT_wk6,
          MVMT_wk7,
          MVMT_wk8)

data <- tibble(day_count = day_count,
               day = day,
               day_num = day_num,
               Week = Week,
               MVMT = MVMT)


plot(data$day_count, data$MVMT)

write_csv(data, "time_data.csv")
