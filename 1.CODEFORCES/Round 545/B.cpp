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

    int i, j, n;
    vector<int> f(n+1), s(n+1);
    cin>>n;

    for(i=0; i<n; i++){
        cin>>f(i);
    }
    for(i=0; i<n; i++){
        cin>>l(i);
        if(f[i]+l[i]==2) d.pb(i);
        else{
            if(f[i]==1) c.pb(i);
            else if(l[i]==1) a.pb(i);
            else none.pb(i);
        }
    }
    ac = a.size(); cl=c.size(); two=d.size(); zero=none.size();
    group = n/2;

}
