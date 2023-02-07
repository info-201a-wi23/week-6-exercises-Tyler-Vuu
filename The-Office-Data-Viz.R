#### Making Data Visualizations with The Office

# Load dplyr and ggplot2
library("dplyr")
library("ggplot2")

# Load The Office data from this URL:
# https://raw.githubusercontent.com/melaniewalsh/Neat-Datasets/main/TheOfficeIMDBPerEpisode.csv
# This data is drawn from Kaggle: https://www.kaggle.com/datasets/kapastor/the-office-imdb-ratings-per-episode

office_df <- read.csv("https://raw.githubusercontent.com/melaniewalsh/Neat-Datasets/main/TheOfficeIMDBPerEpisode.csv", stringsAsFactors = FALSE)
# convert column to date format
office_df$AirDate<- as.Date(office_df$AirDate)

# What is the episode(s) with the highest IMDB rating in the dataset?
# Filter the data and save the row(s) as highest_rating_rows
highest_rating_rows <- office_df %>% 
  filter(Rating == max(Rating, na.rm = TRUE))

# What is the episode(s) with the lowest IMDB rating in the dataset?
# Filter the data and save the row(s) as lowest_rating_rows
lowest_rating_rows <- office_df %>% 
  filter(Rating == min(Rating, na.rm = TRUE))

# Which season of The Office was the best?
# Calculate the average IMDB rating for *each season*
# Save as rating_per_season
rating_per_season <- office_df %>%
  group_by(Season) %>%
  summarize(avg_rating = mean(Rating, na.rm = TRUE))

# Plot the IMDB rating for every episode of The Office as a line plot
# with date on the X axis and IMDB rating on the Y axis
ggplot(office_df) +
  geom_line(aes(x = AirDate, y = Rating))

# Now plot the *average* IMDB rating for *each season* as a scatterplot, a line plot, and both
ggplot(rating_per_season) +
  geom_line(aes(x = Season, y = avg_rating))
