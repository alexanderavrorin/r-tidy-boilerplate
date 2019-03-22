notes: notes.Rmd
	Rscript -e "rmarkdown::render('notes.Rmd')"

live-notes: notes
	while inotifywait -e close_write notes.Rmd; do Rscript -e "rmarkdown::render('notes.Rmd')"; done

