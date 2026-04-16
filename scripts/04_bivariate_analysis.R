# Creating boxplots for AGEP_A and to display levels by SEX_A and EDUCP_A

boxplot(AGEP_A ~ factor(SEX_A), data = nhis_clean,
        main="Boxplot of Age by Sex",
        xlab = "Sex",
        ylab= "Age",
        col= "skyblue", 
        border="black")

boxplot(AGEP_A ~ Education, data = nhis_clean,
        main= "Boxplot of Age by Education Level",
        xlab = "Education",
        ylab = "Age",
        col= "skyblue",
        border= "black")

ggplot(nhis_clean, aes(x=SEX_A, y=AGEP_A))+
  geom_boxplot(aes(fill = factor(SEX_A)))+
  labs(title = "Boxplot of Age by Sex",
       x= "Sex",
       y= "Age")+
  theme_minimal()

ggplot(nhis_clean, aes(x=Education, y=AGEP_A))+
  geom_boxplot(aes(fill = factor(Education)))+
  labs(title = "Boxplot of Age by Education Level",
       x= "Education Level",
       y= "Age")+
  theme_minimal()

# Creating clustered bar chart for PHSTAT_A (General Health) by LSATIS4R_A (Life Satisfaction)

ggplot(nhis_clean, aes(x=factor(LSATIS4R_A), fill= factor(PHSTAT_A)))+
  geom_bar(position = "dodge")+
  labs(title = "Clustered Bar Chart of General Health Status by Quality of life",
       x="Life Satisfaction",
       y="General Health Status")+
    theme_minimal()

# Creating a scatter plot for HEIGHTTC_A and WEIGHTLBTC_A

x <- nhis_clean$HEIGHTTC_A
y <- nhis_clean$WEIGHTLBTC_A

plot(x,y,
     main="Scatter plot of Height vs Weight",
     xlab = "Height",
     ylab= "Weight", 
     pch = 19, frame = FALSE)

ggplot(nhis_clean,
       aes(x = HEIGHTTC_A, y = WEIGHTLBTC_A))+
  geom_point(color="purple",
             size= 2,
             alpha=.6)+
  labs(title = "Scatter plot of Height vs Weight",
       x= "Height",
       y= "Weight")

# Correlation report Height vs Weight
# This report shows that there is a significant relationship p-value<2.2e-16, because we reject the null hypothesis.

cor.test(nhis_clean$HEIGHTTC_A,nhis_clean$WEIGHTLBTC_A)
