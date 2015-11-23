/******************************************************************************/
/********************* CAR PLATES ANONYMIZATION *******************************/
/************************* DIPLOMA THESIS *************************************/
/*********************** BARBORA SKRIVANKOVA **********************************/
/********************* xskri01@stud.fit.vutbr.cz ******************************/
/******************************************************************************/

/********************* MAIN MODULE **************************************/
/** file name: 			main.cpp
	creation date:		11/2015
**/

#include "Neuron.h"

using namespace std;
                               

// The main progam. 
int main() { 
	Neuron n(10);
    n.setBase(SUM);
    n.setAct(THRESH);
    n.setThresh(0.5);
	for(int i = 0; i < 10; i++){
		n.setIn(i, (i+8)/10.0);
	}
	n.printIn();
    n.count();
    cout << "Inner value is " << n.getInVal() << endl;
    cout << "Output is " << n.getOut() << endl;
    return 0; 
} 

