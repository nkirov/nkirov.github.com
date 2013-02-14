program WordSearch;

var
  A : array [0..101, 0..101] of Char;
  W : array [1..100] of string;
  WF : array[1..100, 1..5] of Integer;
  AN, WN : Integer;

procedure Init;
var
  I, J : Integer;
  S : string;
begin
  FillChar(A, SizeOf(A), #0);
  FillChar(WF, SizeOf(WF), 0);
  WN := 0;
  ReadLn(AN);
  for I := 1 to AN do
    begin
      ReadLn(S);
      for J := 1 to Length(S) do A[I, J] := S[J];
    end;
  repeat
    ReadLn(S);
    if S <> '0' then
      begin
        Inc(WN);
        W[WN] := S;
      end;
  until S='0';
end;

procedure MakeIt;
var
  I, J, I1, J1, M : Integer;
  S : string;
begin
  for I := 1 to AN do
    for J := 1 to AN do
      begin
        S := '';
        I1 := I; J1 := J;
        repeat
          S := S + A[I1, J1];
          Inc(J1);
          for M := 1 to WN do
            if (WF[M, 1] = 0) and (S = W[M]) then
              begin
                WF[M, 1] := 1;
                WF[M, 2] := I;
                WF[M, 3] := J;
                WF[M, 4] := I1;
                WF[M, 5] := J1-1;
              end;
        until A[I1, J1] = #0;

        S := '';
        I1 := I; J1 := J;
        repeat
          S := S + A[I1, J1];
          Dec(J1);
          for M := 1 to WN do
            if (WF[M, 1] = 0) and (S = W[M]) then
              begin
                WF[M, 1] := 1;
                WF[M, 2] := I;
                WF[M, 3] := J;
                WF[M, 4] := I1;
                WF[M, 5] := J1+1;
              end;
        until A[I1, J1] = #0;

        S := '';
        I1 := I; J1 := J;
        repeat
          S := S + A[I1, J1];
          Inc(I1);
          for M := 1 to WN do
            if (WF[M, 1] = 0) and (S=W[M]) then
              begin
                WF[M, 1] := 1;
                WF[M, 2] := I;
                WF[M, 3] := J;
                WF[M, 4] := I1-1;
                WF[M, 5] := J1;
              end;
        until A[I1, J1] = #0;

        S := '';
        I1 := I; J1 := J;
        repeat
          S := S + A[I1, J1];
          Dec(I1);
          for M := 1 to WN do
            if (WF[M, 1] = 0) and (S=W[M]) then
              begin
                WF[M, 1] := 1;
                WF[M, 2] := I;
                WF[M, 3] := J;
                WF[M, 4] := I1+1;
                WF[M, 5] := J1;
              end;
        until A[I1, J1] = #0;

        S := '';
        I1 := I; J1 := J;
        repeat
          S := S + A[I1, J1];
          Inc(I1);
          Inc(J1);
          for M := 1 to WN do
            if (WF[M, 1] = 0) and (S=W[M]) then
              begin
                WF[M, 1] := 1;
                WF[M, 2] := I;
                WF[M, 3] := J;
                WF[M, 4] := I1-1;
                WF[M, 5] := J1-1;
              end;
        until A[I1, J1] = #0;

        S := '';
        I1 := I; J1 := J;
        repeat
          S := S + A[I1, J1];
          Inc(I1);
          Dec(J1);
          for M := 1 to WN do
            if (WF[M, 1] = 0) and (S=W[M]) then
              begin
                WF[M, 1] := 1;
                WF[M, 2] := I;
                WF[M, 3] := J;
                WF[M, 4] := I1-1;
                WF[M, 5] := J1+1;
              end;
        until A[I1, J1] = #0;

        S := '';
        I1 := I; J1 := J;
        repeat
          S := S + A[I1, J1];
          Dec(I1);
          Inc(J1);
          for M := 1 to WN do
            if (WF[M, 1] = 0) and (S=W[M]) then
              begin
                WF[M, 1] := 1;
                WF[M, 2] := I;
                WF[M, 3] := J;
                WF[M, 4] := I1+1;
                WF[M, 5] := J1-1;
              end;
        until A[I1, J1] = #0;

        S := '';
        I1 := I; J1 := J;
        repeat
          S := S + A[I1, J1];
          Dec(I1);
          Dec(J1);
          for M := 1 to WN do
            if (WF[M, 1] = 0) and (S=W[M]) then
              begin
                WF[M, 1] := 1;
                WF[M, 2] := I;
                WF[M, 3] := J;
                WF[M, 4] := I1+1;
                WF[M, 5] := J1+1;
              end;
        until A[I1, J1] = #0;
      end;

  for I := 1 to WN do
    if WF[I, 1] = 1 then
      WriteLn(WF[I,2], ',', WF[I,3], ' ', WF[I,4], ',', WF[I,5])
    else WriteLn('Not found');
end;

begin
  Init;
  MakeIt;
end.