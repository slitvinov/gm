M=main
a=-interaction=nonstopmode
t=\
sty/def.tex\
sty/notheme.tex\

i=

$M.pdf: $M.tex $t $i
	pdflatex $a $< && \
	pdflatex $a $<

png: $M.pdf
	tool/pdfpng $M.pdf png

view: $M.pdf
	llpp $M.pdf

clean:
	@echo clean
	@rm -f $M.aux $M.log $M.nav $M.out $M.pdf $M.snm $M.toc
