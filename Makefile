source = main.tex

all:
	make slide
	make handout

slide:
	platex -halt-on-error -interaction=nonstopmode -jobname=slide '\documentclass[11pt, dvipdfmx]{beamer} \input{main}'
	dvipdfmx slide.dvi

handout:
	platex -halt-on-error -interaction=nonstopmode -jobname=handout '\documentclass[11pt, dvipdfmx, handout]{beamer} \input{main}'
	dvipdfmx handout.dvi

clean:
	rm *.aux *.log *.nav *.out *.snm *.toc *.pdf *.dvi *.xbb *~
