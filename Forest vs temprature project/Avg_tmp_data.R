### Load global temperature data
avg_tmp_data <- read_csv("Environment_Temperature_change_E_All_Data_NOFLAG.csv")

### Clean data
avg_tmp_data_v2 <- avg_tmp_data %>%  
  mutate(mean_tmp_1990_2020 = rowMeans(avg_tmp_data[ , c(37,66)], na.rm = TRUE)) %>% 
  filter(Element == "Temperature change" & Months == "Meteorological year") %>%
  select(Area,mean_tmp_1990_2020) %>% 
  rename(region = Area)


head(avg_tmp_data_v2)

