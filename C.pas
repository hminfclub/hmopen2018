var
    n, cnt, i: longint;
    k: int64;
begin
    read(n, k);
    cnt := 0;
    for i := 1 to n do
        if (k mod i > 0) then
            cnt := cnt + 1;
    write(cnt);
end.
