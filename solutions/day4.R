# day 4 solutions

# plotting exercise
ggplot(correct_accuracy, aes(x = t_norm, y = correct)) + 
  geom_point()

# condition accuracies
mean_accuracies |> 
  filter(t_norm >= 500, t_norm <= 3000) |>
  group_by(condition) |>
  summarise(accuracy = mean(mean_correct))
