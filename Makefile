
outline.pdf: outline.tex
	@latexmk -pdf $<

quals.pdf: quals.tex aims.tex quals.bib header.tex figures/fig-aln.pdf figures/fig-cgan.pdf
	@latexmk -pdf $<
	@make clean

figures/fig-%.pdf: figures/fig-%.tex
	@lualatex $<
	@mv fig-$*.pdf figures/

clean:
	@rm -f *.{aux,log,fdb_latexmk,fls,bbl,bcf,blg,run.xml,out}
	@rm -f figures/*.{aux,log,fdb_latexmk,fls,bbl,bcf,blg,run.xml,out}
