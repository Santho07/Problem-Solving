#include <bits/stdc++.h>
using namespace std;
int main()
{
   int i,n,a,n1,n2;
   vector<int>v;
   cin>>n>>n1>>n2;
   for(i=0;i<n;i++){
        cin>>a;
        v.push_back(a);
   }
   sort(v.rbegin(),v.rend());
   int mn=min(n1,n2);
   int sum1=0;
   for(i=0;i<v.size();i++){
    sum1+=v[i];
    if(mn-1==i) break;
   }
   double div1=(double)sum1/(double)mn;
   int mx=max(n1,n2);
   int sum2=0,cnt=0;
   for(int j=i+1;j<v.size();j++){
    sum2+=v[j];
    cnt++;
    if(cnt==mx) break;
   }
   double div2=(double)sum2/(double)mx;
   printf("%.8lf\n",div1+div2);
   return 0;
}
