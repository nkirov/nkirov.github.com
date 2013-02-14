program ausvote;

type string80 = string[80];
var a:array[1..1000,0..20] of byte;
    names:array[1..20] of string80;
    vote:array[0..20] of longint;
    n,k:integer;
    fin:text;
    lozers:set of byte;
    found:boolean;
procedure deletemin;
var i,j,votes,maxvotes,max,minvotes:integer;
begin
   minvotes:=1001;
   for j:=1 to n do if not (j in lozers) then begin
    votes:=0;
    for i:=1 to k do if a[i,a[i,0]]=j then inc(votes);
    if (votes<minvotes)and(votes>0) then minvotes:=votes;
   end;

   maxvotes:=0;
   for j:=1 to n do if not (j in lozers) then begin
    votes:=0;
    for i:=1 to k do if a[i,a[i,0]]=j then inc(votes);
    if votes>maxvotes then begin maxvotes:=votes;max:=j;end;
   end;

   if maxvotes>(k/2) then
     begin
       writeln(names[max]);
       found:=true;exit;
     end;

   if maxvotes=minvotes then
     begin
       for j:=1 to n do if not (j in lozers) then writeln(names[j]);
       found:=true;exit;
     end;

   for j:=1 to n do begin
     votes:=0;
     for i:=1 to k do if a[i,a[i,0]]=j then inc(votes);
     if minvotes=votes then begin
       lozers:=lozers+[j];
       for i:=1 to k do if a[i,a[i,0]]=j then
         begin
           while (a[i,a[i,0]] in lozers) do inc(a[i,0]);
         end;
     end;
   end;
end;
var i,j,l: integer;
begin
  assign(fin,'');
  reset(fin);
  readln(fin,n);
  fillchar(a,sizeof(a),0);
  for i:=1 to 1000 do a[i,0]:=1;
  for i:=1 to n do readln(fin, names[i]);
  k:=0;

  while not eof(fin) do begin
    inc(k);
    for i:=1 to n do read(fin,a[k,i]);
    readln(fin);
  end;
  close(fin);
  lozers:=[];
  for i:=1 to n do begin
    l:=0;
    for j:=1 to k do if a[j,1]=i then inc(l);
    if l=0 then lozers:=lozers+[i];
  end;
  found:=false;
  while not found do
    deletemin;
end.