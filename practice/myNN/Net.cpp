#include "Net.h"

void Net::forwardPass(){

	//initiate input
	vector<double> prevout;
	prevout = input;

	//for all layers
	for(int i = 0; i < layercnt; i++){

		//load input
		if(i > 0){
			prevout.clear();
			prevout = layers.at(i-1).getOutput();
		}
		layers.at(i).setInputs(prevout);

		//count
		layers.at(i).count();
	}

	//compare outputs to the expected outs

}

