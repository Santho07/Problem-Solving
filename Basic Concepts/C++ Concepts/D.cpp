#include<bits/stdc++.h>
using namespace std;

typedef long long ll;
typedef vector<int> vi;

ll _sieve_size;
bitset<200000020> bs;   // 10^7 should be enough for most cases
vi primes;   // compact list of primes in form of vector<int>

void sieve(ll upperbound) {          // create list of primes in [0..upperbound]
  _sieve_size = upperbound;                   // add 1 to include upperbound
  bs.set();                                                 // set all bits to 1
  bs[0] = bs[1] = 0;                                     // except index 0 and 1
    for (ll i = 2; i <= _sieve_size; i++) if (bs[i]) {
        // cross out multiples of i starting from i * i!
        for (ll j = i * i; j <= _sieve_size; j += i) bs[j] = 0;
        primes.push_back((int)i);  // also add this vector containing list of primes
    }
}
bool isPrime(ll N) {                 // a good enough deterministic prime tester
  if (N <= _sieve_size) return bs[N];                   // O(1) for small primes
  for (int i = 0; i < (int)primes.size(); i++)
    if (N % primes[i] == 0) return false;
  return true;                    // it takes longer time if N is a large prime!
}                      // note: only work for N <= (last prime in vi "primes")^2

int main()
{
    ll n, Count =0, i;
    cin>>n;
    if(n==2 || n==4) Count+=2;
    else{
        sieve(n);
        int s = primes.size();
        ll Max = primes[s-1];
        ll m = n - Max;
        if(m==1) Max = primes[s-2], m = n - Max;
        ++Count;
        if(m==2 || m==4) Count+=2;
        else{
            for(i=m; i>2; ){
                if(i%2==0) --i;
                else if(isPrime(i)==1){
                    if(m-i>=0) {
                            m = m - i;
                            ++Count;
                            i = m;
                    }
                    else i-=2;
                }
                else i-=2;
            }
            if(m==2 || m==4) Count+=2;
        }
    }

    cout<<Count<<endl;

    return 0;
}
