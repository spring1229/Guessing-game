all: README.md

README.md:
        echo '# Guessing game' >>README.md
        echo '## Peer Graded assignment ##' >>README.md
        echo '* This makefile was running at: $(shell date +%H:%M:%S+%Y-%m-%d) *'>>README.md
        echo '* There were $(shell wc -l <guessinggame.sh) lines in the guessinggame.sh *'>>README.md
        echo '# End #' >>README.md
clean: rm readme.md
