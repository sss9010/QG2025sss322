#Setting up a project using workflowr
#Step 1: Install and load workflowr if it is not already installed
install.packages("workflowr")
#Step 2: Load the package
library(workflowr)
#Step 3: Set up a GIT repository on your laptop - you only need to do this once
# Replace the example text with your information
wflow_git_config(user.name = "sss9010", user.email = "siim_sepp@hotmail.com", overwrite = T)
#Step 4: Create the project
wflow_start("myproject", existing = TRUE)
wflow_build()
remove.packages("git2r")

#Pay attention to your current working directory for RStudio.
#When you are ready to build the html page type:
wflow_build()
#note you will need to modify _site.yml file to include your RMarkdown output.
wflow_view()
git2r::status()
git2r::init()
git2r::config(user.name = "Siim Sepp", user.email = "sss322@cornell.edu")
cwd()

setwd("C:/Users/Siim Sepp/Box/Lenovo/GitHub")
installed.packages()

wflow_start("C:/Users/Siim Sepp/Box/Lenovo/GitHub/myproject", existing= TRUE)


library(git2r)
repo <- git2r::repository("C:/Users/Siim Sepp/Box/Lenovo/GitHub/myproject", discover = TRUE)
