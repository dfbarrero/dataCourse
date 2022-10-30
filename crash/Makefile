# Customize these two lines
TARGETS=muii mcyte # Courses to compile
NAME=crash

# Do not touch
TEX=xelatex -interaction nonstopmode -halt-on-error -file-line-error
FILENAME=$(NAME).tex

.PHONY: all clean view

all: $(TARGETS)

$(TARGETS):
	$(TEX) -jobname=$(NAME)-$@ "\newcommand{\modo}{$@} \input{$(FILENAME)}" > $(NAME)-$@.log

clean:
	rm -f *.out *aux *bbl *blg *log *toc *.ptb *.tod *.fls *.fdb_latexmk *.lof *.nav *.snm *.vrb

platform=$(shell uname)

ifeq ($(platform),Darwin)
view:
	open *.pdf
else
view:
	find -iname '$(NAME)*.pdf' -print0 | xargs -0 -n 1 xdg-open
endif

