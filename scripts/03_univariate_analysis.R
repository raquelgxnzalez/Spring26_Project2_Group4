# summary statistics 

# Age
cat("\nAGEP_A Summary:\n")
mean(nhis_clean$AGEP_A, na.rm = TRUE)
median(nhis_clean$AGEP_A, na.rm = TRUE)
sd(nhis_clean$AGEP_A, na.rm = TRUE)
summary(nhis_clean$AGEP_A)

# Weight
cat("\nWEIGHTLBTC_A Summary:\n")
mean(nhis_clean$WEIGHTLBTC_A, na.rm = TRUE)
median(nhis_clean$WEIGHTLBTC_A, na.rm = TRUE)
sd(nhis_clean$WEIGHTLBTC_A, na.rm = TRUE)
summary(nhis_clean$WEIGHTLBTC_A)

# Height
cat("\nHEIGHTTC_A Summary:\n")
mean(nhis_clean$HEIGHTTC_A, na.rm = TRUE)
median(nhis_clean$HEIGHTTC_A, na.rm = TRUE)
sd(nhis_clean$HEIGHTTC_A, na.rm = TRUE)
summary(nhis_clean$HEIGHTTC_A)

# Base R Histogram
hist(nhis_clean$AGEP_A,
     main = "Histogram of Age",
     xlab = "Age",
     col = "blue")

hist(nhis_clean$WEIGHTLBTC_A,
     main = "Histogram of Weight",
     xlab = "Weight",
     col = "blue")

hist(nhis_clean$HEIGHTTC_A,
     main = "Histogram of Height",
     xlab = "Height",
     col = "blue")

ggplot(nhis_clean, aes(x = AGEP_A)) +
  geom_histogram(bins = 30, fill = "lightblue") +
  ggtitle("Age Distribution")

ggplot(nhis_clean, aes(x = WEIGHTLBTC_A)) +
  geom_histogram(bins = 30, fill = "lightblue") +
  ggtitle("Weight Distribution")

ggplot(nhis_clean, aes(x = HEIGHTTC_A)) +
  geom_histogram(bins = 30, fill = "lightblue") +
  ggtitle("Height Distribution")

# Base R Boxplot
boxplot(nhis_clean$AGEP_A,
        main = "Age Boxplot",
        col = "green")

boxplot(nhis_clean$WEIGHTLBTC_A,
        main = "Weight Boxplot",
        col = "green")

boxplot(nhis_clean$HEIGHTTC_A,
        main = "Height Boxplot",
        col = "green")

ggplot(nhis_clean, aes(y = AGEP_A)) +
  geom_boxplot(fill = "lightgreen") +
  ggtitle("Age Boxplot")

ggplot(nhis_clean, aes(y = WEIGHTLBTC_A)) +
  geom_boxplot(fill = "lightgreen") +
  ggtitle("Weight Boxplot")

ggplot(nhis_clean, aes(y = HEIGHTTC_A)) +
  geom_boxplot(fill = "lightgreen") +
  ggtitle("Height Boxplot")
