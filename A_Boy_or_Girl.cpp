#include <iostream>
#include <string>
#include <set>
int main(){
    
    std::string n;
    std::cin >> n;
    std::set<char> sc;
         
    for (char ch : n){
    sc.insert(ch);
}
            if (sc.size()%2 == 0){
                std::cout << "CHAT WITH HER!";
            }else {
                std::cout << "IGNORE HIM!";
            }
        return 0;
    }
    
