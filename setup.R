# Setup

## Packages necessary for cleaning/analysis
require(readr)
require(dplyr)


# Importing Data

setwd("~/Documents/Grinnell College/04_Spring 2017/MAT-397 (Adv Data Sci)/Coursera/08_Developing Data Products/DDP-Week-04")
wikiData <- read_csv("database.csv") # Warning of 4 parsing failures; can choose to fix or not
dim(wikiData)
head(wikiData)


# Data Manipulation

wiki <- select(wikiData, full_name:birth_year, country:page_views)
    # removed article_id since it's just an identifier
    # removed city since it's too specific for the purpose of this app
    # removed state since countries is a better geographical identifier
    # removed average_views since it's just a calculation based on the other two columns
    # removed historical_popularity_index since it's just a calculation based on the other two columns
dim(wiki)
head(wiki)


