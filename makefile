
# CC and CPPFLAGS must be named this way
CC = g++
WARNING = -Wall -Wpedantic -Wextra -Wno-sign-compare
CPPFLAGS = -O3 $(WARNING) # -c is automatic

OBJECTS1 = test1.o # list of object files

all: test1.x
test1.x: $(OBJECTS1)
	$(CC) $(CPPFLAGS) $^ -o $@

test1.o: test1.cpp timer.h # other dependencies
# obj1.o: depencencies
# ...

run1: test1.x
	./test1.x
clean:
	rm -f *.x *.o