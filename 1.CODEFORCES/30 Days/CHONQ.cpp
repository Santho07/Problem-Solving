#include<bits/stdc++.h>
#define IOS             ios::sync_with_stdio(0); cin.tie(0); cout.tie(0);
#define pb              push_back
#define mkp             make_pair
#define all(a)          a.begin(), a.end()
#define rall(a)         a.rbegin(), a.rend()
#define maximum(a)      *max_element(all(a))
#define minimum(a)      *min_element(all(a))
#define MAX             (int)1e5+7
using namespace std;
typedef long long LL;
typedef pair<int, int> pi;
typedef pair<LL, LL> pill;

int main()
{
    IOS;
    int t, n, k, sum, j, i, cn;


    cin>>t;
    while(t--){
        cin>>n>>k;
        vector<int> v(n);
        for(i=0; i<n; i++) cin>>v[i];

        for(i=0; i<n; i++){
            sum = 0;
            cn = 0;
            for(j=i; j<n; j++){
                ++cn;
                sum += (v[j]/cn);
            }
            if(sum<=k) break;
        }
        if(i>=n) cout<<n+1<<endl;
        else cout<<v[i]<<endl;
    }
    return 0;

}
