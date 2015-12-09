#include "Layer.h"

void Layer::setInputs(vector<double> in){
	for(int i = 0; i < ncnt; i ++){
		neurons.at(i).clearIn();
		neurons.at(i).setIn(in);
	}

}

double Layer::getNthOutput(int n){
	return neurons.at(n).getOut();
}

vector<double> Layer::getOutput(){
	vector<double> output;
	for(int i = 0; i < ncnt; i++){
		output.push_back(getNthOutput(i));
	}
	return output;
}

void Layer::count(){
	for(int i = 0; i < ncnt; i++){
		neurons.at(i).count();
	}
}

