﻿var
   filetext: text;
   a:string;
   i:integer;
begin
assign(filetext,'c:\text.txt');
rewrite(filetext);
for i:=1 to 10 do
    writeln(filetext, i); // Запись числа в файл с переводом строки
reset(filetext);
for i:=1 to 10 do begin
    readln(filetext, a); // Считывание строки из файла
    writeln(a); // Вывод строки на экран
end;
close(filetext);
end.

