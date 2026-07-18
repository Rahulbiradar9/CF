#include <iostream>

int main(){
    int t;
    std::cin >> t;
    while(t--){
        int n;
        std::cin>>n;
        int sum = 0;
        for (int i = 0; i < n ; i++){
            int x;
            std::cin>>x;
            sum = sum + x ;
        }
        if(n%2==0 && sum % 4 == 0)
        std::cout << "YES\n";
        else
        std::cout<<"NO\n";
    }
    return 0;
}