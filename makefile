CC  = lualatex
OBJ = resume.tex
LOG = *.aux *.log
RM  = del
TAR = resume.pdf

default: compile .clean

compile:
	$(CC) $(OBJ)

.clean:
	$(RM) $(LOG)

clean:
	$(RM) $(TAR)