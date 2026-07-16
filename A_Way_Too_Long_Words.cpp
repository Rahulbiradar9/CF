#include <iostream>
#include <string>

int main(){
    int n;
    std::cin >> n ;
    while (n--){
        std::string word;
        std::cin >> word;

        if(word.length() > 10){
            std::cout << word.front() << word.length() -2 << word.back() <<"\n";
        }else {
            std::cout << word <<"\n";
        }
        }
        return 0;
    }
