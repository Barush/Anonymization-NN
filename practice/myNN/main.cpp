/*****************************************************************************/
/*                     CAR PLATES ANONYMIZATION                              */
/*                         DIPLOMA THESIS                                    */
/*                       BARBORA SKRIVANKOVA                                 */
/*                     xskri01@stud.fit.vutbr.cz                             */
/*****************************************************************************/

/*                           MAIN MODULE                                     */

/** file name: 			main.cpp
	creation date:		11/2015
**/

#include "Net.h"

using namespace std;
                               

// The main progam. 
int main() { 
    int incnt = 3;
    int outcnt = 1;
    int lcnt = 2;
    int ncnt[2] = {3, 2};
    Net n = Net(incnt, outcnt, lcnt, ncnt);

    vector<double> ins (3, 1.2);
    n.setInput(ins);

    n.forwardPass();
    return 0; 
} 

