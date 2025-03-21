CC  = lualatex
OBJ = resume.tex
LOG = *.aux *.log
OS := $(shell uname -s)

ifeq ($(OS),Linux)
    RM := rm
else ifneq (,$(findstring MSYS,$(OS)))
    RM := rm
else
    RM := del
endif
TAR = resume.pdf

default: compile .clean

compile:
	$(CC) $(OBJ)

.clean:
	$(RM) $(LOG)

clean:
	$(RM) $(TAR)
