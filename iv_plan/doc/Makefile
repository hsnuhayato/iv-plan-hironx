TARG_NAME = irexdemo
OS=$(shell /bin/uname | sed s/-.*//)
TEX=platex

all: ${TARG_NAME}.dvi

${TARG_NAME}.dvi: ${TARG_NAME}.tex
	${TEX} ${TARG_NAME}.tex
	#jbibtex ${TARG_NAME}
	${TEX} ${TARG_NAME}.tex
	#${TEX} ${TARG_NAME}.tex
	dvipdfmx ${TARG_NAME}

pdf: ${TARG_NAME}.dvi
	rm -f ${TARG_NAME}.pdf
	dvipdfmx ${TARG_NAME}

clean:
	rm -f *.aux *.log *.tag *.toc *.bbl *.blg *~ figure/*~ *.bmc *.dvi

