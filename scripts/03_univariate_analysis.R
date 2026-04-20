# summary statistics 

# Age
cat("\nAGEP_A Summary:\n")
mean(nhis_data$AGEP_A, na.rm = TRUE)
median(nhis_data$AGEP_A, na.rm = TRUE)
sd(nhis_data$AGEP_A, na.rm = TRUE)
summary(nhis_data$AGEP_A)

# Weight
cat("\nWEIGHTLBTC_A Summary:\n")
mean(nhis_data$WEIGHTLBTC_A, na.rm = TRUE)
median(nhis_data$WEIGHTLBTC_A, na.rm = TRUE)
sd(nhis_data$WEIGHTLBTC_A, na.rm = TRUE)
summary(nhis_data$WEIGHTLBTC_A)

# Height
cat("\nHEIGHTTC_A Summary:\n")
mean(nhis_data$HEIGHTTC_A, na.rm = TRUE)
median(nhis_data$HEIGHTTC_A, na.rm = TRUE)
sd(nhis_data$HEIGHTTC_A, na.rm = TRUE)
summary(nhis_data$HEIGHTTC_A)

# Base R Histogram
hist(nhis_data$AGEP_A,
     main = "Histogram of Age",
     xlab = "Age",
     col = "blue")

hist(nhis_data$WEIGHTLBTC_A,
     main = "Histogram of Weight",
     xlab = "Weight",
     col = "blue")

hist(nhis_data$HEIGHTTC_A,
     main = "Histogram of Height",
     xlab = "Height",
     col = "blue")

ggplot(nhis_data, aes(x = AGEP_A)) +
  geom_histogram(bins = 30, fill = "lightblue") +
  ggtitle("Age Distribution")

ggplot(nhis_data, aes(x = WEIGHTLBTC_A)) +
  geom_histogram(bins = 30, fill = "lightblue") +
  ggtitle("Weight Distribution")

ggplot(nhis_data, aes(x = HEIGHTTC_A)) +
  geom_histogram(bins = 30, fill = "lightblue") +
  ggtitle("Height Distribution")

# Base R Boxplot
boxplot(nhis_data$AGEP_A,
        main = "Age Boxplot",
        col = "green")

boxplot(nhis_data$WEIGHTLBTC_A,
        main = "Weight Boxplot",
        col = "green")

boxplot(nhis_data$HEIGHTTC_A,
        main = "Height Boxplot",
        col = "green")

ggplot(nhis_data, aes(y = AGEP_A)) +
  geom_boxplot(fill = "lightgreen") +
  ggtitle("Age Boxplot")

ggplot(nhis_data, aes(y = WEIGHTLBTC_A)) +
  geom_boxplot(fill = "lightgreen") +
  ggtitle("Weight Boxplot")

ggplot(nhis_data, aes(y = HEIGHTTC_A)) +
  geom_boxplot(fill = "lightgreen") +
  ggtitle("Height Boxplot")


# Frequency tables and graphs for qualitative variables

# 1. SEX_A

table(nhis$SEX_A)

barplot(table(nhis$SEX_A),
        main = "Sex Distribution",
        xlab = "Sex",
        ylab = "Frequency",
        col = "lightblue")

ggplot(nhis, aes(x = factor(SEX_A))) +
  geom_bar(fill = "blue") +
  labs(title = "Sex Distribution",
       x = "Sex",
       y = "Frequency")

# 2. HISPALLP_A

table(nhis$HISPALLP_A)

barplot(table(nhis$HISPALLP_A),
        main = "Hispanic Origin Distribution",
        xlab = "HISPALLP_A",
        ylab = "Frequency",
        col = "lightgreen")

ggplot(nhis, aes(x = factor(HISPALLP_A))) +
  geom_bar(fill = "green") +
  labs(title = "Hispanic Origin Distribution",
       x = "HISPALLP_A",
       y = "Frequency")


# 3. EDUCP_A

table(nhis$EDUCP_A)

barplot(table(nhis$EDUCP_A),
        main = "Education Level Distribution",
        xlab = "EDUCP_A",
        ylab = "Frequency",
        col = "orange")

ggplot(nhis, aes(x = factor(EDUCP_A))) +
  geom_bar(fill = "orange") +
  labs(title = "Education Level Distribution",
       x = "EDUCP_A",
       y = "Frequency")

# 4. PHSTAT_A
table(nhis$PHSTAT_A)

barplot(table(nhis$PHSTAT_A),
        main = "Physical Health Status Distribution",
        xlab = "PHSTAT_A",
        ylab = "Frequency",
        col = "purple")

ggplot(nhis, aes(x = factor(PHSTAT_A))) +
  geom_bar(fill = "purple") +
  labs(title = "Physical Health Status Distribution",
       x = "PHSTAT_A",
       y = "Frequency")


# 5. LSATIS4R_A
table(nhis$LSATIS4R_A)

barplot(table(nhis$LSATIS4R_A),
        main = "Life Satisfaction Distribution",
        xlab = "LSATIS4R_A",
        ylab = "Frequency",
        col = "pink")

ggplot(nhis, aes(x = factor(LSATIS4R_A))) +
  geom_bar(fill = "pink") +
  labs(title = "Life Satisfaction Distribution",
       x = "LSATIS4R_A",
       y = "Frequency")
