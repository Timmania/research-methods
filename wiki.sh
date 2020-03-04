#!/bin/bash

# If file does not exist download raw from wikipedia into current directory
if [ ! -f "RuG.txt" ]; then
	wget -O "RuG.txt" "https://nl.wikipedia.org//w/index.php?title=Rijksuniversiteit_Groningen&action=raw"
fi

# Grep all occurences of the word "de" and count all the lines
grep -wio 'de' ./RuG.txt | wc -l
