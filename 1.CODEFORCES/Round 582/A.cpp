#include<bits/stdc++.h>
#define IOS             ios::sync_with_stdio(0); cin.tie(0);
#define pb              push_back
#define mkp             make_pair
#define all(a)          a.begin(), a.end()
#define rall(a)         a.rbegin(), a.rend()
#define maximum(a)      *max_element(all(a))
#define minimum(a)      *min_element(all(a))
#define MAX             (int)2e5+7
using namespace std;
typedef long long LL;
typedef pair<int, int> pi;
typedef pair<LL, LL> pill;

int main()
{
    IOS;
    int n,i, j;
    string s;

    cin>>n;
    cin>>s;
    int N =0, Z= 0;
    for(i=0; i<n; i++){
        if(s[i]=='n') N++;
        else if(s[i]=='z') Z++;
    }
    for(i=0; i<N; i++) cout<<1<<" ";
    for(i=0; i<Z; i++) cout<<0<<" ";
    cout<<endl;



}
