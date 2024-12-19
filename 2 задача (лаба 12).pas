var
  n, k: integer;
  f: text;
  i, j: integer;
begin
  writeln('Введите N:');
  readln(n);
  writeln('Введите K:');
  readln(k);

  assign(f, 'stars.txt');  // Имя файла
  rewrite(f);

  for i := 1 to n do
  begin
    for j := 1 to k do
      write(f, '*');
    writeln(f); // Переход на новую строку после каждой строки звездочек
  end;

  close(f);
  writeln('Файл stars.txt создан.');
end.
