#include <stdio.h>
#include <math.h>

#define eps 1e-8

struct rect
{
	int x1,y1,x2,y2;
};

struct point 
{
	int x,y;
};

int NN;
int rn,n;
rect r[128];
point p[512];

__inline int orN(double x1,double y1,
				 double x2,double y2,
				 double x3,double y3)
{
	double res = x1*(y2-y3) + x2*(y3-y1) + x3*(y1-y2);	
	if (res<-1e-6) { return -1; }
	if (res>1e-6) { return 1; }
	return 0;
}

__inline bool cross(int x11,int y11,int x12,int y12,
		   int x21,int y21,int x22,int y22)
{
	int o1,o2;

	o1 = orN(x11,y11,x12,y12,x21,y21);
	o2 = orN(x11,y11,x12,y12,x22,y22);
	if (o1*o2!=-1) return 0;
	o1 = orN(x21,y21,x22,y22,x11,y11);
	o2 = orN(x21,y21,x22,y22,x12,y12);
	if (o1*o2!=-1) return 0;
	return 1;
}

int lcross(int x1,int y1,int x2,int y2)
{
	int i;
	for (i=0;i<rn;i++)
	{
		if (cross(x1,y1,x2,y2,r[i].x1,r[i].y1,r[i].x2,r[i].y2)) return 1;
		if (cross(x1,y1,x2,y2,r[i].x1,r[i].y2,r[i].x2,r[i].y1)) return 1;
	}
	return 0;
}

int neigh[512][512];
double mass[512][512];

double hypot(double a,double b)
{
	return sqrt(a*a+b*b);
}

//double dist(double x1, double y1, double x2, double y2)
//{
	//return sqrt( (x1-x2)*(x1-x2) + (y1-y2)*(y1-y2) );
//}

void bg()
{
	int i,j;

	for (i=0;i<512;i++) { neigh[i][0]=0; }

	for (i=0;i<rn;i++)
	{
		if (r[i].x1==0)  { r[i].x1=-101*NN; }
		if (r[i].y1==0)  { r[i].y1=-101*NN; }
		if (r[i].x2==NN) { r[i].x2=101*NN; }
		if (r[i].y2==NN) { r[i].y2=101*NN; }
	}

	j=0;
	p[0].x=0;  p[0].y=0;
	p[1].x=NN; p[1].y=NN;
	j=2;
	for (i=0;i<rn;i++)
	{
		p[j].x=r[i].x1; p[j].y=r[i].y1; j++;
		p[j].x=r[i].x1; p[j].y=r[i].y2; j++;
		p[j].x=r[i].x2; p[j].y=r[i].y2; j++;
		p[j].x=r[i].x2; p[j].y=r[i].y1; j++;
	}
	n=j;
	
	for (j=0;j<n-1;j++)
	{
		for (i=j+1;i<n;i++)
		{
			if (lcross( p[i].x, p[i].y, p[j].x, p[j].y )==0)
			{				
				neigh[i][++neigh[i][0]] = j;
				neigh[j][++neigh[j][0]] = i;
				mass[j][i]=mass[i][j]=
					hypot( p[i].x-p[j].x, p[i].y-p[j].y );

	//			printf("%d %d %lf\n",i,j,mass[j][i]);
			}
		}
	}
}

int used[512];
double dist[512];
void dijkstra()
{
	int best = 0;
	for(int i=0; i<n; i++)
	{
		dist[i] = 1e+10;
		used[i] = 0;
	}
	dist[0]=0;

	for(i=0; i<n; i++)
	{
		best=-1;
		for(int j=0; j<n; j++)
		{
			if( (!used[j]) && dist[j] < 1e+9 )
			{
				if (best==-1) best = j; else
				if (dist[best] > dist[j]) best=j;
			}
		}
		
		if (best==-1)  break; 

		used[best] = 1;

		for( j=1; j<= neigh[best][0]; j++)
		{
			int k = neigh[best][j];
			if(used[k]) continue;
			if( dist[k] > dist[best] + mass[best][k] )
				dist[k] = dist[best] + mass[best][k]; 
		}
	}
}

/*

4
20 3
4 0 9 6
16 4 19 20
6 7 15 14
20 3
16 6 20 10
8 0 10 10
0 12 14 16
20000 3
4000 0000 9000 6000
16000 4000 19000 20000
6000 7000 15000 14000
20000 3
16000 6000 20000 10000
8000 0000 10000 10000
0000 12000 14000 16000

  */


int main(void)
{
	int j,i,ntest;
	scanf("%d",&ntest);

	for (j=0;j<ntest;j++)
	{
		scanf("%d %d",&NN,&rn);
		for (i=0;i<rn;i++)
		{
			scanf("%d %d %d %d",&r[i].x1,&r[i].y1,
								&r[i].x2,&r[i].y2);
		}
		bg();
		dijkstra();
		printf("%lf\n",dist[1]);			
	}

	return 0;
}