program BinaryPalindromes;
var
  St : array [0..17] of Longint;
  F, L : Longint;

procedure MakeSt;
var
  I : Word;
begin
  St[0] := 1;
  for I := 1 to 17 do St[I] := St[I-1]*2;
end;

procedure MakeIt;
var
  I, Br, K, N : Longint;
  Found : Boolean;
begin
  Br := 0;
  for K := F to L do
    begin
      for I := 0 to 15 do
        if (St[I] <= K) and (St[I+1] > K) then
          begin
            N := I+1;
            Break;
          end;
      Found := True;
      for I := 0 to N div 2 do
        begin
          if (((K and St[I])=St[I]) and ((K and St[N-I-1])=St[N-I-1])) or
            (((K and St[I]) = 0) and ((K and St[N-I-1]) = 0)) then
          else begin Found := False; Break; end;
        end;
      if Found then Inc(Br);
    end;
  WriteLn(Br);
end;

procedure Init;
begin
  repeat
    Read(F);
    if F <> 0 then
      begin
        ReadLn(L);
        MakeIt;
      end;
  until F = 0;

end;

begin
  MakeSt;
  Init;
end.