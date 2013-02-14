program AustralianVoting;
var
  A  : array [1..1000, 1..20] of Byte;
  Names : array[1..20] of string;
  V : array [1..20] of Longint;
  N, Ndiv, AN : Integer;
  F : Text;

procedure Init;
var
  I, J : Integer;
begin
  ReadLn(N);
  for I := 1 to N do ReadLn(Names[I]);
  AN := 1;
  while not EOF do
    begin
      for J := 1 to N do
        Read(A[AN, J]);
      ReadLn;
      Inc(AN);
    end;
  Dec(AN);
  Ndiv := AN div 2 + 1;
end;

procedure WriteOut;
var
  I, J : Integer;
begin
  WriteLn;
  WriteLn(N);
  for I := 1 to N do
    WriteLn(Names[I]);
  for I := 1 to AN do
    begin
      for J := 1 to N do
        Write(A[I, J], ' ');
      WriteLn;
    end;
end;

procedure MakeIt;
var
  I, J, M : Integer;
  Min, Max : Integer;
  Done : Boolean;
begin
  Done := False;
  repeat
    for I := 1 to N do
      if V[I] > 0 then V[I] := 0;
    for I := 1 to AN do Inc(V[A[I,1]]);
    Min := MaxInt;
    Max := -MaxInt;
    for I := 1 to N do
      begin
        if (V[I] <> -1) and (Min > V[I]) then Min := V[I];
        if Max < V[I] then Max := V[I];
      end;
    if Max >= Ndiv then
      for I := 1 to N do
        if V[I] = Max then
          begin
            Done := True;
            WriteLn(Names[I]);
          end;
    if Max=Min then
      for I := 1 to N do
        if V[I] = Max then
          begin
            Done := True;
            WriteLn(Names[I]);
          end;

    if not Done then
      begin
        for I := 1 to N do
          if V[I]=Min then
            begin
              V[I] := -1;
              for J := 1 to AN do
                if A[J, 1] = I then
                  begin
                    for M := 1 to N-1 do A[J, M] := A[J, M+1];
                    A[J, N] := 0;
                  end;
            end;
      end;
  until Done;
end;

begin
  Init;
  MakeIt;
{  WriteOut;}
end.