# day 3 solutions

# dog exercise
dogs |>
  filter(gloss %in% c("dog","dogs")) |>
  group_by(speaker_name, gloss) |>
  summarise(first_age = min(target_child_age))

# MLU plotting exercise
ggplot(brown_stats, aes(x = target_child_age, y = mlu_w, colour = target_child_name)) +
  geom_point() +
  geom_smooth()

# and/or
and_or_tokens <- get_tokens(corpus = "Brown", role = c("target_child", "mother"),
                          token = c("and","or"))

all_tokens <- get_tokens(corpus = "Brown", role = c("target_child", "mother"),
                            token = "*")

all_token_counts <- all_tokens |>
  group_by(transcript_id, target_child_name, target_child_age, speaker_role) |>
  summarise(n_total = n())

and_or_counts <- and_or_tokens |>
  group_by(transcript_id, target_child_name, target_child_age, speaker_role, gloss) |>
  summarise(n = n())
  
and_or_freqs <- left_join(and_or_counts, all_token_counts) |>
  mutate(prop = n/n_total, 
         gloss = str_to_lower(gloss))
  
ggplot(and_or_freqs, aes(x = target_child_age, y = prop, col = speaker_role)) + 
  geom_point() + 
  geom_smooth() + 
  facet_grid(gloss~target_child_name, scales = "free_y")
