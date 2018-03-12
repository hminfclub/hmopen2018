var
    n, i, left, ans: longint;
    sum, s: int64;
    a: array[1..100000] of int64;
begin
    read(n);
    read(s);
    for i := 1 to n do
        read(a[i]);
    left := 1;
    ans := 0;
    sum := 0;
    
    for i := 1 to n do begin
        sum := sum + a[i];
        while (sum > s) do begin
            sum := sum - a[left];
            left := left + 1;
        end;
        if (sum = s) then
            ans := ans + 1;
    end;
    
    write(ans);
end.
