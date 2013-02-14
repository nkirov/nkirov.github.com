program c;
var
   na,kr:word;{array[1..100] of word;}
   count,i:word;


function tobin(n:word):string;
var s:string;
    i:integer;
begin
     s:='';
     while n>0 do
     begin
     s:=s+chr(ord('0')+n mod 2);
     n:=n div 2;
     end;
tobin[0]:=s[0];
n:=ord(s[0]);
for i:=1 to n do
    tobin[i]:=s[n-i+1];
end;

function ispalin(s:string):boolean;
var i,n:integer;
    flag:boolean;
begin
   n:=ord(s[0]);
   flag:=true;
   for i:=1 to n div 2 do
       if s[i]<>s[n-i+1] then begin flag:=false;break;end;
ispalin:=flag;
end;

begin
while true do
BEGIN
    read(na);
    if na=0 then break;
    readln(kr);
    count:=0;
    for i:=na to kr do
    if ispalin(tobin(i)) then
    be
    gin
    count:=count+1;
    end;
    writeln(count);
END;
end.
