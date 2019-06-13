#!/usr/bin/env Rscript

all: www

www: index.Rmd _site.yml intro.Rmd dplyr.Rmd join.Rmd include/after_body.html
	Rscript -e "rmarkdown::render_site();"

clean:
	Rscript -e "rmarkdown::clean_site();"
  
upload: 
	rsync -avz --exclude-from .rsync-ignore --delete ~/Dropbox/mm-sql/www/ bbaumer@www.science.smith.edu:www/mm-sql/

