#include <bits/stdc++.h>
using namespace std;
#define ll long long int
int main()
{
	ll n,k,i,j;
	scanf("%lld%lld",&n,&k);
	for(i=0;i<=n-1;i++)
	{
		scanf("%lld",&a[i]);
	}
	i=0;
	for(j=1;j<=k;j++)
	{
		swap(a[i],a[i+1]);
		i++;
		if(i==(n-1))
			break;
	}
	for(i=0;i<=n-1;i++)
	{
		printf("%lld\n",a[i]);
	}
	return 0;
}