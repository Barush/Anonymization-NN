#include "Layer.h"

class Net { 

    int inlen;
    int outlen;
    vector<double> input;
    vector<double> output;
    int layercnt;
    vector<Layer> layers;
	
public: 
    Net(int in, int out, int lcnt, int *ncnt){

        inlen = in;
        outlen = out;
        layercnt = lcnt;
        for(int i = 0; i < lcnt; i++){
            // create ith layer with ncnt[i] neurons - each with ncnt[i-1] inputs
            layers.push_back(Layer(ncnt[i], (i==0)?in:ncnt[i-1]));
        }
    }

    ~Net(){
    } 

    void setInput(vector<double> in){input = in;}
    vector<double> getInput(){return input;}
    void setOutput(vector<double> out){output = out;}
    vector<double> getOutput(){return output;}

    void forwardPass();

}; 
