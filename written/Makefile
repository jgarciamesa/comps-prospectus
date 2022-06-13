
TEX_FILES = $(addsuffix .tex, header abstract background aim1 aim2 aim3 preliminary_results future_work)

.PHONY: default

default: prospectus.pdf
	@make clean

outline.pdf: outline.tex
	@latexmk -pdf $<
	@make clean

prospectus.pdf: prospectus.tex prospectus.bib $(TEX_FILES)
	@latexmk -pdf $<
	@make clean

figures/fig-%.pdf: figures/fig-%.tex
	@lualatex $<
	@mv fig-$*.pdf figures/

clean:
	@rm -f prospectus.aux
	@rm -f prospectus.log
	@rm -f prospectus.fdb_latexmk
	@rm -f prospectus.fls
	@rm -f prospectus.bbl
	@rm -f prospectus.bcf
	@rm -f prospectus.blg
	@rm -f prospectus.run.xml
	@rm -f prospectus.out
