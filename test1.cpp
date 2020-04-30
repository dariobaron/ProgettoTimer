#include <iostream>
#include "timer.h"

using namespace std;

int main(){

	Timer<chrono::nanoseconds> timer;

	cout << "lap 1 : " << timer.lap() << endl;

	cout << "lap 2 : " << timer.lap() << endl;

	cout << "fine : " << timer.stop() << endl;

	return 0;
}