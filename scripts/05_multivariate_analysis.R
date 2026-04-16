# Use ggplot2 to enhance the Day 3 Scatterplot
ggplot(nhis_clean, aes(x = HEIGHTTC_A, y = WEIGHTLBTC_A, color = factor(SEX_A))) +
  geom_point(alpha = 0.5) +
  facet_wrap(~ Education) +
  labs(title = "Height vs Weight by Sex, Faceted by Education Level",
       x = "Height (inches)",
       y = "Weight (pounds)",
       color = "Sex (1=M, 2=F") +
  theme_minimal()