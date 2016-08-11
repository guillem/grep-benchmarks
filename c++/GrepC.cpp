
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <chrono>

using namespace std;
using namespace std::chrono;

int main (int argc, char *argv[]) {

	auto t0 = high_resolution_clock::now();
	ifstream file (argv[2]);
	string line;
	int counter = 0;
	while (getline(file, line)) {
		if (line.find(argv[1]) != string::npos) {
			counter ++;
		}
	}
	cout << counter << "\n";
	auto t1 = high_resolution_clock::now();
	cout << (duration_cast<nanoseconds>(t1-t0).count()) / 1e9 << "\n";

}

