library(tidyverse)
library(GPIdata2)


# Load google sheet from Knoedler

library(googlesheets)

knoedler_antiquities <- gs_url("https://docs.google.com/spreadsheets/d/1e7uf3WVorv94ypdj9ymnlXeReecPBOqn8sQmoxnP758/edit#gid=0")
knoedler_antiquities_data <- gs_read(knoedler_antiquities)

raw_load("raw_knoedler")

knoedler_info <- raw_knoedler %>%
  select(pi_record_no, stock_book_no, knoedler_number, art_authority_1, title, description, subject, object_type, materials) 

ancient_knoedler <- knoedler_antiquities_data %>%
  left_join(knoedler_info, by = c("knoedler_number" = "knoedler_number"))

make_report(ancient_knoedler)

# Digging and Dealing

library(googlesheets)
dig_deal <- gs_url("https://docs.google.com/spreadsheets/d/1uTfYJj1998mXN9LQlXodYjONfVl3Vyq25swcezIpVdM/edit#gid=0")
digging_dealing_data <- gs_read(dig_deal)


library(lubridate)

knoedler_parsed_dates <- digging_dealing_data %>%
  mutate(joined_date = )

This is a test
