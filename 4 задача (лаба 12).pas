var  inputFile, outputFile: TextFile;
  number, minNumber, maxNumber: Integer;  firstRead: Boolean;
begin
  assign(inputFile, 'C:\Users\Admin\Desktop\12 лаба\input.txt');  Reset(inputFile);
    firstRead := True;
    while not EOF(inputFile) do
  begin    ReadLn(inputFile, number);
        if firstRead then
    begin      minNumber := number;
      maxNumber := number;      firstRead := False;
    end    else
    begin      if number < minNumber then
        minNumber := number;      if number > maxNumber then
        maxNumber := number;    end;
  end;
  CloseFile(inputFile);
  AssignFile(outputFile, 'C:\Users\Admin\Desktop\12 лаба\output.txt');  Rewrite(outputFile);
    WriteLn(outputFile, 'Минимальное число: ', minNumber);
  WriteLn(outputFile, 'Максимальное число: ', maxNumber);  
  CloseFile(outputFile);end.