var
    s, t: string;
    i, j, n, ans: integer;
    ok: boolean;

// писать отдельную процедуру не обязательно,
// но это повышает наглядность кода
procedure shift(var s: string);
var
    c: char;
    i: integer;
begin
    c := s[1];
    for i := 1 to length(s) - 1 do
        s[i] := s[i + 1];
    s[length(s)] := c;
end;

begin
    readln(t);
    readln(s);
    n := length(s);
    ans := 0;
    
    for i := 1 toa n do begin
        shift(s);
        ok := true;
        for j := 1 to n do
            if (t[j] <> '?') and (s[j] <> t[j]) then begin
                ok := false;
                break;
            end;
        if ok then
            ans := ans + 1;
    end;
    
    write(ans);
end.
