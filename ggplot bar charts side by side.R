

library(ggplot2)

spendiness$exp_cell = factor(spendiness$experiment_cell_id)
ggplot(data = spendiness, aes(x = factor(min_dollar), y = count)) +
   geom_bar() +
   facet_wrap(~name)

ggplot(data = spendiness1, aes(x = factor(min_dollar), y = count, fill = experiment_cell_id)) +
  geom_bar(stat = 'identity', position = 'dodge') +
  facet_wrap(~name)
