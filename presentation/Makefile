.PHONY: default
default: prospectus_presentation.pdf

IMAGES = $(addprefix ../resources/figures/, $(addsuffix .pdf, fig-aln fig-fst fig-dp-model fig-benchmark))

prospectus_presentation.pdf: prospectus_presentation.tex $(IMAGES)
	@latexmk -pdf $<
	@make clean_prospectus

outline.pdf: outline.tex
	@latexmk -pdf $<
	@make clean_outline

TMP = .aux .bbl .bcf .blg .fdb_latexmk .fls .log .nav .out .run.xml .snm .toc
PROSPECTUS_CLEAN = $(addprefix prospectus_presentation, $(TMP))
OUTLINE_CLEAN = $(addprefix outline, $(TMP))

.PHONY: clean_prospectus
clean_prospectus:
	@rm -f $(PROSPECTUS_CLEAN)

.PHONY: clean_outline
clean_outline:
	@rm -f $(OUTLINE_CLEAN)
