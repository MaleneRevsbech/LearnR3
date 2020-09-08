## code to prepare `mmash` dataset goes here

library(here)

# What here() does is tell R to first look for the .Rproj file and then start
# looking for the file we actually want.

# create an object to store the webpage
mmash_link <- "https://physionet.org/static/published-projects/mmash/multilevel-monitoring-of-activity-and-sleep-in-healthy-people-1.0.0.zip"

# where will you download from, where will you save it to
download.file(mmash_link, destfile = here("data-raw/mmash-data.zip"))

# Because the original dataset is stored online, don’t save it to Git history.
# Add the zip file to the Git ignore list.
# You only need to do this once.
# usethis::use_git_ignore("data-raw/mmash-data.zip")

# Click Ctrl-Opt-M to commit to git


# If you only use data for one project, save it in the project folder
# BUT if you are going to use the data in differnet projects,
# store it somewhere else and type int he path as you normally do

unzip(
  here("data-raw/mmash-data.zip"),
  exdir =  here("data-raw"),
  junkpaths = T) #we want to save EVERYTHING in zip file, without making a weird name

# To get a nice style guide, type ctl + shift + A and highlight it

unzip(here("data-raw/MMASH.zip"),
      exdir = here("data-raw"))
# We don't add junkpaths because we want to keep the folder structure

library(fs)
file_delete(here(c("data-raw/MMASH.zip",
                   "data-raw/SHA256SUMS.txt",
                   "data-raw/LICENSE.txt")))
file_move(here("data-raw/DataPaper/"),here("data-raw/mmash"))

dir_tree("data-raw", recurse = 1)

# The R script downloads the data and processes it, so we don’t need to have Git track it
#usethis::use_git_ignore("data-raw/mmash/")

