# Specification for FizzBuzz implementations

> Fizz buzz is a group word game for children to teach them about division.[1] Players take turns to count incrementally, replacing any number divisible by three with the word "fizz", and any number divisible by five with the word "buzz". [...] Numbers divisible by 15 become fizz buzz.
> 
> [...]
> 
> Fizz buzz (often spelled FizzBuzz in this context) has been used as an interview screening device for computer programmers.[3][4] Writing a program to output the first 100 FizzBuzz numbers is a trivial problem[citation needed]. 

- [Fizz buzz](https://en.wikipedia.org/w/index.php?title=Fizz_buzz&oldid=1019191662), Wikipedia contributors

---

A FizzBuzz implementation is an executable, that when invoked without arguments endlessly outputs an integer, the string "Fizz" or the string "Buzz" separated by newlines to stdout until interrupted.

When invoked with an integral, unsigned 64-bit integer value as the only argument, the process is to output as many lines as specified in the argument to stdout.

The n-th line of output should be:
- `Fizz` if n is divisible by 3
- `Buzz` if divisible by 5 
- `FizzBuzz` if n is divisible by 15
- n (in decimal representation) if not divisible by either 3 or 5

Counting begins at the first line of input with 1.

The stream ends with a newline.
