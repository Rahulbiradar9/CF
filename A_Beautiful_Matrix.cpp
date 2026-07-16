#include <iostream>

int main(){
    int x , y;
    for (int i =1; i <=5 ; i++){
        for (int j=1 ; j<=5 ; j++){
            int number;
            std::cin >> number;
            if(number == 1){
                x=i;
                y=j;
            }
        }
    }
    std::cout << abs(x - 3) + abs(y-3) ;
    return 0;
}