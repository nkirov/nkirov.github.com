var br,i,j,k,n,poc,kr:longint;
	sek:array[1..100] of longint;
	pecateno:boolean;
	dvan,krint,pocint:int64;

function stepen(m:longint):int64;
var pom:int64;
	i:longint;
begin
	pom:=1;
	for i:=1 to m-1 do
		pom:=pom shl 1;
	stepen:=pom;
end;

begin

readln (n);
for i:=1 to n do begin
{	write('br');}
	pecateno:=false;
	readln(br);
	dvan :=stepen(br);

	for j:=1 to br do begin
		read(sek[j]);
	end;
	poc:=1;
	kr:=2;
	pocint:=0;
	krint:=dvan-1;
	for j:=br downto 1 do begin
		if sek[j]=poc then begin
			krint:= krint - dvan;
			dvan :=dvan div 2;
			kr:=6-(poc+kr);
		end else
		if sek[j]=kr then begin
			pocint:=pocint + dvan;
			dvan:=dvan div 2;
			poc:=6-(poc+kr);
		end
		else if not pecateno then begin
			writeln(-1);
			pecateno:=true;
		end;
	end;
{	if sek[1] = poc then begin
		krint := krint -1;
	end else
	if sek[1] = kr then begin
		pocint := pocint +1;
	end else begin
		writeln(-1);
	end;}
	if not pecateno then
		writeln(pocint);
end;

end.
