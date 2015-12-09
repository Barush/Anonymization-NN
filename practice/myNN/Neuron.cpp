
#include "Neuron.h"

using namespace std;

void Neuron::countInVal(){
    switch (base) {

        case SUM: 
        { // {} necessary because of sum declaration
            int sum = 0;
            for (int i = 0; i < inSize; i++){
                sum += in.at(i);
            }
            //cout << "Sum is "<<sum<<endl;
            innerVal = sum;
            break;
        }

        default: 
            cerr << "Undefined base function!" << endl;

    }
}

void Neuron::count(){
    //cout << "Act is " << act << " and it equals " << THRESH << endl;
    countInVal();
    switch (act) {
        case THRESH: 
            if( innerVal > threshold ){
                out = 1;
            }
            else {
                out = 0;
            }
            break;
        default: cerr << "Undefined activation function!" << endl;
    }
}

void Neuron::printIn(){
	for(int i = 0; i < inSize; i++){
		cout << "in[" << i << "]=" << in[i] << endl;
	}
}
