injuries <- vroom::vroom("neiss/injuries.tsv")
injuries

products <- vroom::vroom('neiss/products.tsv')
population <- vroom::vroom('neiss/population.tsv')
products
population
View(population)
View(products)
View(injuries)

selected <- injuries %>%
  filter(prod_code == 649)
nrow(selected)



selected %>%
  count(location, wt = weight, sort = TRUE)

selected %>%
  count(body_part, wt = weight, sort = T)

selected %>%
  count(diag, wt = weight, sort = T)

summary <- selected %>%
  count(age, sex, wt = weight)
summary

summary %>%
  ggplot(aes(age, n, color = sex))+
  geom_line()+
  labs(y = 'Estimated number of injuries')

summary <- selected %>%
  count(age, sex, wt = weight) %>%
  left_join(population, by = c('age', 'sex'))%>%
  mutate(rate = n / population * 1e4)
summary

summary %>%
  ggplot(aes(age, rate, color = sex))+
  geom_line()+
  labs(y = 'Injuries per 10.000 people')

selected %>%
  sample_n(10)%>%
  pull(narrative)
