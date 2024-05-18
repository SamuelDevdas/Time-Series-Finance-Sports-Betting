# Load necessary libraries
library(dplyr)
library(ggplot2)
library(tidyr)
library(data.table)
library(lubridate)

# Read the CSV file into a dataframe
BSP_DFR <- read.csv("Time-Series-Finance-Sports-Betting/csv_files/BSP_DF.csv")


### 1 THE PREDICTION ACCURACIES TEST THE EFFICIENCY OF THE MARKETS
##WIN prediction accuracy
# Create rounded columns
BSP_DFR$Rounded_IP_BSP <- round(BSP_DFR$Implied_Perc_BSP.x, 2)
BSP_DFR$Rounded_IP_BSP10 <- round(BSP_DFR$Implied_Perc_BSP.x, 1)

# Group by the rounded to 2 decimal IP BSP and calculate mean Winning_Freq
Prediction_test <- BSP_DFR %>%
  group_by(Rounded_IP_BSP) %>%
  summarise(
    Winning_Freq = mean(WIN_LOSE.x, na.rm = TRUE),
    Frequency = n()
  )

# Calculate scaling factor
scale_factor <- max(Prediction_test$Frequency) / max(Prediction_test$Winning_Freq)

# Plotting the data (1% bin sizes)
ggplot(data = Prediction_test, aes(x = Rounded_IP_BSP)) +
  geom_bar(aes(y = Frequency), stat = "identity", fill = "lightblue", alpha = 0.7) +
  geom_line(aes(y = Winning_Freq * scale_factor), color = "blue", size = 1) +
  geom_point(aes(y = Winning_Freq * scale_factor), color = "blue", size = 2) +
  scale_y_continuous(
    name = "Occurences",
    sec.axis = sec_axis(~ . / scale_factor, name = "Winning Frequency (%)")
  ) +
  labs(
    title = "Implied Winning Probability vs Winning Frequency and Number of Occurences",
    x = "Implied Probability (%)"
  ) +
  theme_minimal()


# Group by the rounded to 1 decimal IP BSP and calculate mean Winning_Freq
Prediction_test10 <- BSP_DFR %>%
  group_by(Rounded_IP_BSP10) %>%
  summarise(
    Winning_Freq = mean(WIN_LOSE.x, na.rm = TRUE),
    Frequency = n()
  )

# Calculate scaling factor
scale_factor10 <- max(Prediction_test10$Frequency) / max(Prediction_test10$Winning_Freq)

# Plotting the data (10% bin sizes)
ggplot(data = Prediction_test10, aes(x = Rounded_IP_BSP10)) +
  geom_bar(aes(y = Frequency), stat = "identity", fill = "lightblue", alpha = 0.7) +
  geom_line(aes(y = Winning_Freq * scale_factor10), color = "blue", size = 1) +
  geom_point(aes(y = Winning_Freq * scale_factor10), color = "blue", size = 2) +
  scale_y_continuous(
    name = "Occurences",
    sec.axis = sec_axis(~ . / scale_factor10, name = "Winning Frequency (%)")
  ) +
  labs(
    title = "Implied Winning Probability vs Winning Frequency and Number of Occurences",
    x = "Implied Probability (%)"
  ) +
  theme_minimal()

##PLACE prediction accuracy################################################################

# Create rounded columns
BSP_DFR$Rounded_IP_BSP_P <- round(BSP_DFR$Implied_Perc_BSP.y, 2)
BSP_DFR$Rounded_IP_BSP_P10 <- round(BSP_DFR$Implied_Perc_BSP.y, 1)

# Group by the rounded to 2 decimal IP BSP and calculate mean Winning_Freq
Prediction_test_P <- BSP_DFR %>%
  group_by(Rounded_IP_BSP_P) %>%
  summarise(
    Winning_Freq = mean(WIN_LOSE.y, na.rm = TRUE),
    Frequency = n()
  )

# Calculate scaling factor
scale_factor <- max(Prediction_test_P$Frequency) / max(Prediction_test_P$Winning_Freq)

# Plotting the data (1% bin sizes)
ggplot(data = Prediction_test_P, aes(x = Rounded_IP_BSP_P)) +
  geom_bar(aes(y = Frequency), stat = "identity", fill = "lightblue", alpha = 0.7) +
  geom_line(aes(y = Winning_Freq * scale_factor), color = "blue", size = 1) +
  geom_point(aes(y = Winning_Freq * scale_factor), color = "blue", size = 2) +
  scale_y_continuous(
    name = "Occurences",
    sec.axis = sec_axis(~ . / scale_factor, name = "Placing Frequency (%)")
  ) +
  labs(
    title = "Implied Placing Probability vs Placing Frequency and Number of Occurences",
    x = "Implied Probability (%)"
  ) +
  theme_minimal()


# Group by the rounded to 1 decimal IP BSP and calculate mean Winning_Freq
Prediction_test_P10 <- BSP_DFR %>%
  group_by(Rounded_IP_BSP_P10) %>%
  summarise(
    Winning_Freq = mean(WIN_LOSE.y, na.rm = TRUE),
    Frequency = n()
  )

# Calculate scaling factor
scale_factor10 <- max(Prediction_test_P10$Frequency) / max(Prediction_test_P10$Winning_Freq)

# Plotting the data (10% bin sizes)
ggplot(data = Prediction_test_P10, aes(x = Rounded_IP_BSP_P10)) +
  geom_bar(aes(y = Frequency), stat = "identity", fill = "lightblue", alpha = 0.7) +
  geom_line(aes(y = Winning_Freq * scale_factor10), color = "blue", size = 1) +
  geom_point(aes(y = Winning_Freq * scale_factor10), color = "blue", size = 2) +
  scale_y_continuous(
    name = "Occurences",
    sec.axis = sec_axis(~ . / scale_factor10, name = "Placing Frequency (%)")
  ) +
  labs(
    title = "Implied Placing Probability vs Placing Frequency and Number of Occurences",
    x = "Implied Probability (%)"
  ) +
  theme_minimal()

## 2 HOW DOES THE LIQUIDITY BETWEEN WIN AND PLACE MARKETS COMPARE

# Calculate the sum per EVENT_ID.x and reshape the data
BSP_DFR_long <- BSP_DFR %>%
  group_by(EVENT_ID.x) %>%
  summarise(
    Sum_PPTRADEDVOL_x = sum(PPTRADEDVOL.x, na.rm = TRUE),
    Sum_PPTRADEDVOL_y = sum(PPTRADEDVOL.y, na.rm = TRUE)
  ) %>%
  pivot_longer(cols = c(Sum_PPTRADEDVOL_x, Sum_PPTRADEDVOL_y),
               names_to = "Market",
               values_to = "Value") %>%
  mutate(Market = ifelse(Market == "Sum_PPTRADEDVOL_x", "WIN Market", "PLACE Market"))

# Create the horizontal box plot
ggplot(BSP_DFR_long, aes(x = Value, y = Market, fill = Market)) +
  geom_boxplot() +
  scale_fill_manual(values = c("WIN Market" = "blue", "PLACE Market" = "green")) +
  coord_cartesian(xlim = c(0, 2500000)) +
  scale_x_continuous(labels = scales::comma, breaks = seq(0, 1500000, 250000)) +
  labs(title = "Box Plot of Pre-Race Traded Volume for WIN and PLACE Markets",
       x = "Traded Volume",
       y = "Market") +
  theme_minimal() +
  theme(legend.position = "none")

### 3 Why the specific markets that we chose


# Convert EVENT_DT to Date format if it's not already
BSP_DFR <- BSP_DFR %>%
  mutate(EVENT_DT.x = as.Date(EVENT_DT.x, format = "%Y-%m-%d"))
# Filter the data for May 2015
BSP_DFR_2015_May <- BSP_DFR %>%
  filter(floor_date(EVENT_DT.x, "month") == as.Date("2015-05-01"))

# Group by EVENT_ID.x, EVENT_NAME.x, and EVENT_DT.x, calculate the sum of PPTRADEDVOL.x, PPTRADEDVOL.y, and the mean of n
summarised_BSP_DFR <- BSP_DFR_2015_May %>%
  group_by(EVENT_ID.x, EVENT_NAME.x, EVENT_DT.x) %>%
  summarise(
    Sum_PPTRADEDVOL_x = sum(PPTRADEDVOL.x, na.rm = TRUE),
    Sum_PPTRADEDVOL_y = sum(PPTRADEDVOL.y, na.rm = TRUE),
    Mean_n = mean(n, na.rm = TRUE)
  ) %>%
  ungroup()

# Filter the top 5 by Sum_PPTRADEDVOL_x
top5_BSP_DFR_2015_May <- summarised_BSP_DFR %>%
  top_n(5, Sum_PPTRADEDVOL_x) %>%
  arrange(desc(Sum_PPTRADEDVOL_x))

# Display the result
top5_BSP_DFR_2015_May

## The Event GB / York 15th May with ID 118771360 was chosen for the following reasons: 
#May 2015 data is free, all other cost £230.00 for PRO Frequency Tick Data (50ms)
#Top five highest liquidity in May 2015.£1832572 traded pre Race in WIN market and £177187 on place market.
#Only 6 horses, meaning easier to analyse and only 2 horses place