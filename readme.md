# Workshop functional tests (bash)

# Exercise 1 : Number of arguments

Create a script that display the number of arguments given when you call the script

```bash
> ./exercise1 "foo" "bar" 3
The number of arguments is 3
```
# Exercise 2 : Arguments list

Create a script that display the arguments as a list given when you call the script

```bash
> ./exercise2 "foo" "bar" 3
The arguments are ["foo", "bar", 3]
```
# Exercise 3 : Is there an argument ?
Create a script that display "no arguments" if you don't give any argument when you call the script and "arguments" if you give an argument

```bash
> ./exercise3 "foo" "bar" 3
arguments
> ./exercise3
no arguments
```
## (Bonus) : is this argument a number ?

If you want to push this Exercise forward, you can try to check if the given argument is a number or not
```bash
> ./exercise3 5
This is number
> ./exercise3 "foo"
This is not a number
```

# Exercise 4 : Let's start with loops

Create a script that display every number from 1 to 10 using a loop

```bash
> ./exercise4
1
2
3
4
5
6
7
8
9
10
```
## (Bonus) : Let's iterate over a list
If you want to push this Exercise forward, you can try to iterate over a list of arguments by displaying each argument on a new line
```bash
> ./exercise4 "foo" "bar" 5
"foo"
"bar"
5
```

# Exercise 5 : So now we can create a function

Try to create a function that display "hello world"

```bash
> ./exercise5
hello world
```

# Exercise 6 : Let's test our program
## Part 0
You see the do_op.zip file in this repository, you can unzip it
it's a program that can do some basic operations on numbers in C
you can compile it with the given Makefile
## Part 1
Create a function that can execute the do_op program with the given arguments

```bash
> ./exercise6-1 "4 + 6"
The result of the do-op is 10
```
## Part 2
Create a function that can compare the return value of the do_op program with the expected value given as argument

```bash
> ./exercise6-2 "4 + 6"
expected: 10
```
## Part 3
Create a function that can compare the displayed text of the do_op program with the content of a file given as argument

```bash
> ./exercise6-3
(4 + 6): TEST PASSED
(3 - 2): TEST NOT PASSED
(10 / 2): TEST PASSED
```
### Bonus ideas
- Colors ?
- *layout ?*
- **layout 2 ?**
- <ins>layout 3 ?</ins>
- display text difference ?
- read user input ?
