# R course Sep 8-9 
install.packages("remotes")
remotes::install_gitlab("rostools/r3", upgrade = TRUE)

# A pop-up to type in your name (first and last), 
# as well as your email
r3::setup_git_config()
r3::check_setup()

prodigenr::setup_project("~/Desktop/LearnR3")

usethis::use_blank_slate()
usethis::use_r("functions", open = FALSE)
r3::create_rmarkdown_doc()
r3::check_project_setup()