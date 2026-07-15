#include <iostream>

int main(){

long long n,m,a;

    std::cin>> n >> m >> a;
        long long row = (n + a - 1)/a;
        long long col = (m + a - 1)/a;
    std::cout<< row * col << std::endl ;
    return 0;
}