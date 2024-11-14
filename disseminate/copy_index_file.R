library(here)

# Copy html-files from disseminate folder to working directory
disseminate_folder <- here("disseminate")
wd <- here()

html_files <- list.files(disseminate_folder, ".html$")
file.copy(file.path(disseminate_folder, html_files), wd)

# Rename eu_steer_trade
any(html_files == "eu4_steer_trade.html")
file.rename(file.path(wd, html_files), "index.html")
