#### Making Data Visualizations with The Office

# Load dplyr and ggplot2
library("dplyr")
library("ggplot2")

# Load The Office data from this URL:
# https://raw.githubusercontent.com/melaniewalsh/Neat-Datasets/main/TheOfficeIMDBPerEpisode.csv
# This data is drawn from Kaggle: https://www.kaggle.com/datasets/kapastor/the-office-imdb-ratings-per-episode

office_df <-
# convert column to date format
office_df$AirDate<- as.Date(office_df$AirDate)

# What is the episode(s) with the highest IMDB rating in the dataset?
# Filter the data and save the row(s) as highest_rating_rows
Your code here

# What is the episode(s) with the lowest IMDB rating in the dataset?
# Filter the data and save the row(s) as lowest_rating_rows

# Which season of The Office was the best?
# Calculate the average IMDB rating for *each season*
# Save as rating_per_season
Your code here

# Plot the IMDB rating for every episode of The Office as a line plot
# with date on the X axis and IMDB rating on the Y axis

# Now plot the *average* IMDB rating for *each season* as a scatterplot, a line plot, and both
Your code here
