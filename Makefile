
TEX_FILES = $(addsuffix .tex, header summary intro_background intellectual_merit_1 intellectual_merit_2 intellectual_merit_3 preliminary_results broader_impacts)

outline.pdf: outline.tex
	@latexmk -pdf $<

prospectus.pdf: prospectus.tex prospectus.bib $(TEX_FILES)
	@latexmk -pdf $<
	@make clean

figures/fig-%.pdf: figures/fig-%.tex
	@lualatex $<
	@mv fig-$*.pdf figures/

clean:
	@rm -f *.{aux,log,fdb_latexmk,fls,bbl,bcf,blg,run.xml,out}
	@rm -f figures/*.{aux,log,fdb_latexmk,fls,bbl,bcf,blg,run.xml,out}
