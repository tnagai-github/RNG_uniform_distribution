#include <iostream>
#include <random>

#define NSTEP 100

int main(int argc, char *argv[])
{

	//prepare random numbers
	std::random_device seed_gen;
 	std::mt19937_64  engine(seed_gen());

	std::uniform_real_distribution<> dist(0,1) ; 
	// [0,1) according to https://cpprefjp.github.io/reference/random/uniform_real_distribution.html
	// or https://www.cplusplus.com/reference/random/uniform_real_distribution/

  for(int i=0; i < NSTEP ; i++){
    std::cout << dist(engine)  << "\n" ; 
  }
}
