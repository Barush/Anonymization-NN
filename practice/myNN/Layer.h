#include "Neuron.h"

using namespace std;

enum LType {};

class Layer { 

    int ncnt;
    LType type;
    vector<Neuron> neurons;
	
public: 
    Layer(int s, int nins){
        ncnt = s;
        for(int i = 0; i < ncnt; i++){
            neurons.push_back(Neuron(nins));
        }
    }

    ~Layer(){
    } 

    void changeNcnt(int s){ncnt = s;}
    int getNcnt(){return ncnt;}
    void setType(LType l){type = l;}
    LType getType(){return type;}

    void setInputs(vector<double> in);
    double getNthOutput(int n);
    vector<double> getOutput();
    void count();

}; 
