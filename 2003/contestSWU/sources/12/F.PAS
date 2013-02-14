program Hanoy;

var
  Q, M : array [1..63] of Byte;
  N : Integer;

function Check : Boolean;
var
  I : Byte;
  B : Boolean;
begin
  B := True;
  for I := 1 to N do
    if M[I] <> Q[I] then
      begin
        B := False;
        Break;
      end;
  Check := B;
end;

procedure MakeIt;
var
  K, T : Byte;
  Small : Boolean;
  d:longint;
begin
  K := 0;
  d:=0;
  small := True;
  repeat
    if small then
      begin
        if N mod 2 = 0 then
          begin
            if M[1] = 1 then M[1] := 3
            else
              begin
                M[1] := M[1] - 1;
                if M[1] = 2 then K := K + 1
                else K := K - 1;
              end;
          end
        else
          begin
            if M[1] = 3 then M[1] := 1
            else
              begin
                M[1] := M[1] + 1;
                if M[1] = 2 then K := K + 1
                else K := K - 1;
              end;
          end;
        small := False
      end
    else
      begin
        for T := 2 to N do
          if M[T] <> M[1] then Break;
        if M[T] = 2 then K := K - 1;
        if M[T]+1 <> M[1] then
          begin
            if M[T]+1 < 4 then M[T] := M[T]+1
            else M[T] := 1;
          end
        else
          begin
            if M[T]-1 > 0 then M[T] := M[T] - 1
            else M[T] := 3;
          end;
        if M[T] = 2 then K := K + 1;
        small := True;
      end;
   d:=d+1;
  until (Check) or (K=N);
  if K=N then WriteLn(-1)
  else WriteLn(d);
end;

procedure Init;
var
  Br, I, J : Integer;
begin
  ReadLn(Br);
  for I := 1 to Br do
    begin
      ReadLn(N);
      for J := 1 to N do Read(Q[J]);
      for j:=1 to n do m[j]:=1;
      ReadLn;
      MakeIt;
    end;
end;

begin
  Init;
end.