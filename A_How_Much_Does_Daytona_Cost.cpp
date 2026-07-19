#include <iostream>
#include <vector>

int main(){
    int t;
    std::cin>>t;
    while (t--){
        int n , k;
        std::cin>>n>>k;
        std::vector<int> a(n);
        bool found = false;
        for(int i = 0; i < n; i++){
            std::cin>>a[i];
            if(a[i] == k) found = true;
        }
        std::cout << (found ? "YES" : "NO")<<"\n";
    }
    return 0;
}