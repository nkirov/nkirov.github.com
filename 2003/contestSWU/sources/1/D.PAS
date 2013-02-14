var n:longint;
    x1,y1,x2,y2,xx,yy:longint;
    s:extended;
    ii,b:longint;

function NOD(a,b:longint):longint;
var tmp:longint;
begin
while b>0 do
begin
tmp:=b;
b:=a mod b;
a:=tmp;
end;
nod:=a;
end;

procedure Calculate_It;
var i:longint;
begin
readln(n);
while (n>0) do
begin
  b:=0;
  s:=0;
  readln(x2,y2);
  xx:=x2;
  yy:=y2;
  for i:=1 to n-1 do
  begin
    x1:=x2;
    y1:=y2;
    readln(x2,y2);
    s:=s+(x2-x1)*(y1+y2);
    b:=b+nod(abs(x1-x2),abs(y1-y2));
  end;
  s:=s+(xx-x2)*(yy+y2);
  b:=b+nod(abs(x2-xx),abs(yy-y2));
  s:=abs(s/2);
  writeln(round(s+b/2+1));
  readln(n);
end;
end;


begin
Calculate_It;
end.
