################################################################################
##################### CAR PLATES ANONYMIZATION #################################
########################### DIPLOMA THESIS #####################################
######################## BARBORA SKRIVANKOVA ###################################
###################### xskri01@stud.fit.vutbr.cz ###############################
################################################################################

################## MAKEFILE FOR ALL BINARIES IN THESIS #########################
### file name: 			Makefile
###	creation date:		11/2015
################################################################################


CPPFLAGS = --std=c++98 -pedantic -g -Wc99-extensions
LIBS = 

CC = g++ $(CPPFLAGS)
OBJ = Neuron.o Layer.o Net.o

executable: mynn

mynn: main.cpp $(OBJ)
	$(CC) -o mynn main.cpp $(OBJ) $(LIBS)

Neuron.o: Neuron.h Neuron.cpp
	$(CC) -c Neuron.cpp

Layer.o: Layer.h Layer.cpp
	$(CC) -c Layer.cpp

Net.o: Net.h Net.cpp
	$(CC) -c Net.cpp

run:
	./mynn

clean: 
	rm -f *.o
	rm mynn