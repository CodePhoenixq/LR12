var
  s: string;
  f: text;
begin
  writeln('Введите строку S:');
  readln(s);

  assign(f, 'myfile.txt'); // Замените 'myfile.txt' на имя вашего файла
  append(f); // Открываем файл в режиме добавления

  writeln(f, s); // Записываем строку в конец файла

  close(f);
  writeln('Строка добавлена в файл.');
end.
