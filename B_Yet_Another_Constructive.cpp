#include <bits/stdc++.h>

int main() {
    std::ios_base::sync_with_stdio(false);
    std::cin.tie(NULL);
    
    int t;
    std::cin >> t;
    
    while (t--) {
        long long n, k, m;
        std::cin >> n >> k >> m;
        
        if (k > m) {
            std::cout << "NO\n";
            continue;
        }
        
        std::cout << "YES\n";
        for (long long i = 1; i < k; i++) std::cout << 1 << ' ';
        std::cout << (m - (k - 1));
        for (long long i = k + 1; i <= n; i++) std::cout << ' ' << (m + 1);
        std::cout << '\n';
    }
    
    return 0;
}