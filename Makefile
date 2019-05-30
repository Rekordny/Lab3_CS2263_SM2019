
COMPILER = gcc

C_FLAGS = -Wall -Wextra

help:
	@printf "available command:\n"
	@printf "	make help               (this command)\n"
	@printf "	make Stack              (to build your C program)\n"
	@printf "	make test               (to run every test case)\n"
	@printf "	make test1          	(to run test cases 1 for your program)\n"
	@printf "	make test2         	(to run test cases 2 for your program)\n"
	@printf "	make test3         	(to run test cases 3 for your program)\n"

# link .o files to make an executable
LinkedList: LinkedList.o
	$(COMPILER) $(C_FLAGS) -o LinkedList LinkedList.o 

# compile the `LinkedList.o` file
LinkedList.o: LinkedList.c
	$(COMPILER) $(C_FLAGS) -c LinkedList.c

##################################################################
# Test Cases
test: test1 test2 test3


# run our executable by passing in the text file via stdin with `<` and passing stdout to a file with `>`
# then use a scrit to verify that the result are the same one as the one expected
test1: LinkedList
	./LinkedList < Data/test1.input > test1.result

test2: LinkedList
	./LinkedList < Data/test2.input > test2.result

test3: LinkedList
	./LinkedList < Data/test3.input > test3.result

