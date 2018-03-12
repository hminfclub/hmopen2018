var
    n: integer;
begin
    read(n);
    if (n >= 404) then
        write('MSU')
    else if (n >= 322) then
        write('MPI')
    else if (n >= 239) then
        write('MIT')
    else
        write(':(');
end.
