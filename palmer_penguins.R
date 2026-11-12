## Practice Data on Palmer Penguins ##
# Available at: https://allisonhorst.github.io/palmerpenguins/

citation("palmerpenguins")

## Installation

install.packages("palmerpenguins")

# Description of the two datasets

library(palmerpenguins)
data(package = 'palmerpenguins')

# Use the penguin dataset to structure your project
library(tidyverse)
head(penguins)


##### INTRO TO GIT EXERCISE TASKS #####

# Create a new script, save it to your directory and start exploring the data:
# Install and load library(tidyverse)
# Load the penguin data into R using read_table
# Run some linear regressions with lm()
# Make and save some plots into figs/ using ggplot 
# Save this edited dataset in your results/ or figures/ folder

## NB: Make regular saves and commits to get into the habit of making your work
## collaborative, understandable and easy to follow along


# Use the code below if you are stuck



##### CODE FOR EXERCISES BELOW #####

# Copy each bit and make a commit with a description for each one
# You will stll need to edit some things such as folder names to match your repository
# Get into the habit of committing often


# Load the tidyverse library.
library(tidyverse)

# If the package doesn't exist, run `install.packages("tidyverse")` and then `library(tidyverse)`. 
# You only need to run the install once.

# Read in the data
glimpse(penguins)

# Run a linear regression
model1 <- lm(body_mass_g ~ flipper_length_mm, data = penguins)
summary(model1)

# Create a plot
ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g, colour = species)) +
  geom_point() +
  stat_smooth(method = "lm") 

# Save your plot into your figures or results folder
ggsave("figs/1_flipper_bodymass_regression.png") #NB: CHANGE FOLDER NAME

#NB. This saves the last plot that was run!

# Subset the data to females only
penguins_female <- subset(penguins, sex == "female")
head(penguins_female)

# Save the edited dataset
write_tsv(penguins_female, "results/1_penguin_female_only.txt")
# NB: CHANGE FOLDER NAME

print('Ty Jojo!!!')
