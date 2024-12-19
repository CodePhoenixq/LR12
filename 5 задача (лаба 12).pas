program RemoveEmptyLines;

var
  inputFile, outputFile: TextFile;
  line: string;
  inputFileName, outputFileName: string;

begin
  // Укажите имя входного и выходного файлов
  inputFileName := 'C:\Users\Admin\Desktop\12 лаба\1.txt';   // Входной файл
  outputFileName := 'C:\Users\Admin\Desktop\12 лаба\2.txt';  // Выходной файл

  // Открытие входного файла для чтения
  AssignFile(inputFile, inputFileName);
  Reset(inputFile);

  // Открытие выходного файла для записи
  AssignFile(outputFile, outputFileName);
  Rewrite(outputFile);

  // Чтение строк из входного файла
  while not Eof(inputFile) do
  begin
    ReadLn(inputFile, line);
    // Проверка, является ли строка непустой
    if Trim(line) <> '' then
      WriteLn(outputFile, line); // Запись непустой строки в выходной файл
  end;

  // Закрытие файлов
  CloseFile(inputFile);
  CloseFile(outputFile);

  WriteLn('Пустые строки удалены. Результат записан в ', outputFileName);
end.
