program e;

var mat,test:array[1..100] of string[101];
    s:string[101];
    bbb,broi,n,i,j,k,l,i1,j1:integer;
    nx,ny,kx,ky,dx,dy:integer;
    f:boolean;

function proveri(x,y,l,dx,dy:integer):boolean;
var t:integer;
    q:boolean;
begin
    q:=true;
    for t:=2 to l do
    begin
      x:=x+dx;y:=y+dy;
      if (x<1)or(x>n)or(y<1)or(y>n) then
      begin q:=false;break;end;

      if upcase(mat[y][x])<>upcase(s[t]) then
      begin q:=false;break;end;
    end;
proveri:=q;
end;

begin
     readln(n);
     for i:=1 to n do
     begin
       readln(mat[i]);
     end;

     while true do
     BEGIN
          readln(s);
          if s='0' then break;
          broi:=broi+1;
          test[broi]:=s;
     END;

     for bbb:=1 to broi do
     BEGIN
     s:=test[bbb]; f:=false;
          for j:=1 to n do
          if f then break else
          for i:=1 to n do
          if f then break else
          begin
             if upcase(mat[j][i])=upcase(s[1]) then
                begin
                nx:=i;ny:=j;
                for dx:=-1 to 1 do
                if  f then break else
                for dy:=-1 to 1 do
                if  f then break else
                if (dx<>0)or(dy<>0) then
                     begin
                     k:=ord(s[0]);
                     f:=proveri(nx,ny,k,dx,dy);
                     if f then
                          begin
                          writeln(ny,',',nx,' ',ny+(k-1)*dy,',',nx+(k-1)*dx);
                          end;
                     end;
                end;
          end;

          if not f then writeln('Not found');
     END;
end.

