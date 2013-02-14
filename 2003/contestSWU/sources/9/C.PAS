const
	maxn=50000;
var
	rez:array[1..maxn] of longint;
        r,a,b:longint;

        function pal(br:longint):boolean;
	var 	s:array[1..30] of 0..1;
                        i,c:longint;
	begin
		c:=0;
		while (br>0) do begin
			inc(c);
			s[c]:=br mod 2;
			br:=br div 2;
		end;

		pal:=true;
		for i:=1 to (c div 2) do
			if not(s[i]=s[c-i+1]) then begin
				pal:=false;
				break;
			end;


	end;



	procedure resi;
        var i,j:longint;
	begin
		fillchar(rez,sizeof(rez),0);
		for i:=1 to maxn do
			if Pal(i) then begin
				for j:=i to maxn do
					inc(rez[j]);
			end;
	end;

begin
	resi;
	read(a);
	while a<>0 do begin
		readln(b);
		r:=rez[b]-rez[a];
		if pal(a) then inc(r);
		writeln(r);
		read(a);
	end;
end.
