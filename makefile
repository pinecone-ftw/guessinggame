LINES=$(shell wc -l  guessinggame.sh | egrep -o "[0-9]+") 
readme:
	touch README.md
	echo 'This makefile ran on $(shell date)'
	echo -e 'The title of this program is guessinggame.sh\nThis file contains :' $(LINES) 'lines' >> README.md
