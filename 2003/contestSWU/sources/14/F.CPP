#include <stdio.h>
#include <iostream.h>

__int64 st2[64],br;
int a[64];
int m,n,i,ind;

__int64 moves (int from,int to ,int disks)
 {
    if(disks==0)return 0;
    if(a[disks]==from) return
       moves(from,6-from-to,disks-1);
    if(a[disks]==to) return
       st2[disks]+moves(6-from-to,to,disks-1);
       ind=0;
       return 0;
 }

 void main()
   {
      cin>>m;
      for(;m;m--)
      {
	cin>>n;
	for(i=1;i<=n;i++) cin>>a[i];
	st2[1]=1;
	for(i=2;i<=n;i++) st2[i]=2*st2[i-1];
	ind=1;
	br=moves(1,2,n);
	if(ind)
	    printf("%I64d\n",br);
	else
	    cout<<-1<<endl;
      }
 }