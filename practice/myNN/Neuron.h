#include <iostream>
#include <vector>

using namespace std;

enum Base {SUM}; //tady budou obrazkove operace jako konvoluce a tak
enum Activ {THRESH, RAMP, SIGM, TGH};

class Neuron { 
	vector<double> in;		  // vector of inputs for the neuron
	int inSize;		  // size of the input array
    double innerVal;  // value of the inner potential
    double out;       // output value
    Base base;
    Activ act;
    double threshold;

	
public: 
    Neuron(int size){
        inSize = size;     
        innerVal = 0.0;
        out = 0.0;
    }

    ~Neuron(){
        
    } 

    void setIn(vector<double> input){in = input;}
    double getIn(int in_i){return in.at(in_i);}
    double getInVal(){return innerVal;}
    double getOut(){return out;}
    void setBase(Base b){base = b;}
    Base getBase(){return base;}
    void setAct(Activ a){act = a;}
    Activ getAct(){return act;}
    void setThresh(double t){threshold = t;}
    double getThresh(){return threshold;}
    

    void clearIn(){in.clear();}

    //counts inner value of the neuron - depending on base function set
    //inner value is sotred in innerVal var
    void countInVal();
    
    //counts output value of the neuron - depending on activation function set
    //and innerVal value
    //output value is stored in out var
    void count();

    //prints input vector of the neuron
    void printIn();

}; 
