all: fizzbuzz

fizzbuzz: fizzbuzz.cpp
	cc -Ofast fizzbuzz.cpp -o fizzbuzz

install: fizzbuzz
	install -d $(out)/bin/
	install fizzbuzz $(out)/bin/fizzbuzz

clean:
	rm -f fizzbuzz