# day 2 solutions

# admins from another language
admins_russian_ws <- get_administration_data(language = "Russian", 
                                             form = "WS", 
                                             include_demographic_info = TRUE)

# plotting vocab data by age and sex
# note this is a generic solution
lang <- "French (Quebecois)"
admins_ws <- get_administration_data(language = lang, 
                                     form = "WS", 
                                     include_demographic_info = TRUE)

data_summary <- admins_ws |>
  group_by(age, sex) |>
  summarise(production = mean(production), 
            n = n())

ggplot(data_summary, aes(x = age, y = production, col = sex)) + 
  geom_point(aes(size = n)) + 
  geom_smooth()

# complexity exercise
complexity_means <- complexity_instrument_data |> 
  group_by(data_id) |> 
  summarise(complexity_score = sum(value == "complex"))

admins_eng_ws <- left_join(admins_eng_ws, complexity_means)
