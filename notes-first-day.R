# Before the course, re-install R3
remotes::install_gitlab("rostools/r3",upgrade=T,force=T)

# click "ctlr + L + shift" to chekc if it works

# delete files
fs::file_delete(c("R/setup.R", "R/fetch_data.R", "TODO.md"))

