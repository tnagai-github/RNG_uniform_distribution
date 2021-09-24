#GCC
CC = gcc
CXX = g++
CFLAGS =  -O2 -fopenmp -mtune=native #-mtune=intel
CXXFLAGS =  -lm -fopenmp -O3  -march=native -Wall

OBJS =   random.o

EXE_NAMES = random

all: $(EXE_NAMES)

$(EXE_NAME): $(OBJS) 
	$(CXX) -o $(EXE_NAME)  $(OBJS)   $(LOADLIBES)  $(LDLIBS_BOOST)


.PHONY: clean uninstall rebuild 
clean:
	    rm -f $(OBJS)

uninstall:
	    rm -f $(OBJS) $(EXE_NAMES)

rebuild: uninstall $(EXE_NAMES) 


