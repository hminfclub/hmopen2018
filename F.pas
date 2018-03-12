var
    n, m, i, c, k, max1, max2, max3: longint;
    a: array[1..100000] of longint;

procedure swap(var a, b: longint);
var
    t: longint;
begin
    t := a;
    a := b;
    b := t;
end;

begin
    read(n, m);
    for i := 1 to n do
        read(a[i]);
    for i := 1 to m do begin
        read(c, k);
        a[c] := a[c] + k;
    end;
    
    max1 := 1;
    max2 := 2;
    max3 := 3;

    if a[max1] < a[max2] then
        swap(max1, max2);
    if a[max2] < a[max3] then
        swap(max2, max3);
    if a[max1] < a[max2] then
        swap(max1, max2);

    for i := 4 to n do
        if a[i] > a[max1] then begin
            max3 := max2;
            max2 := max1;
            max1 := i;
        end else if a[i] > a[max2] then begin
            max3 := max2;
            max2 := i;
        end else if a[i] > a[max3] then
            max3 := i;
    writeln(max1, ' ', max2, ' ', max3);
end.
