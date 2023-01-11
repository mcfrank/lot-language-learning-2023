# day 1 solutions

# pipe chain
eng_ws$ethnicity |>
  unique() |>
  length()

# mean production scores for age and sex
eng_ws_sex <- eng_ws |> 
  group_by(age, sex) |>
  summarise(production = mean(production), 
            n = n())

# plot age and sex
ggplot(eng_ws_sex, 
       aes(x = age, y = production, col = sex)) + 
  geom_point() + 
  geom_smooth()