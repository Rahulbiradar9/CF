#include <iostream>
#include<cmath>
int main(){
    int t;
    std::cin>>t;

    while(t--){

    float z,x;
    std::cin>>z>>x;
    if(fmod(z,x)== 0){
    std::cout<< "YES\n";
    }else{
    std::cout<<"NO\n";
    }
    }
return 0;
    
}
