################################ MACROS ################################
#
# DOC: the document
# FIG: directory for figures
# BIB: bibliography database

DOC = swinposter-template


####

all: $(DOC).tex
	pdflatex --shell-escape $(DOC).tex

nice: all
	$(RM) $(DOC).aux $(DOC).log $(DOC).out
	$(RM) $(DOC).toc $(DOC).snm $(DOC).nav
	$(RM) *~

clean:
	$(RM) $(DOC).aux $(DOC).log $(DOC).out
	$(RM) $(DOC).toc $(DOC).snm $(DOC).nav
	$(RM) $(DOC).pdf 
	$(RM) *~

