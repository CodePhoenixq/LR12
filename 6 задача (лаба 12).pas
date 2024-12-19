function IsPrime(num: Integer): Boolean;
var
  i: Integer;
begin
  if num < 2 then
    IsPrime := False
  else
  begin
    IsPrime := True;
    for i := 2 to Trunc(Sqrt(num)) do
    begin
      if num mod i = 0 then
      begin
        IsPrime := False;
        Break;
      end;
    end;
  end;
end;

function SumNumbersWithFiveDivisors(n: Integer): Integer;
var
  total_sum, p, p4: Integer;
begin
  total_sum := 0;
  p := 2;
  
  while True do
  begin
    if IsPrime(p) then
    begin
      p4 := p * p * p * p;
      if p4 > n then
        Break;
      total_sum := total_sum + p4;
    end;
    Inc(p);
  end;
  
  SumNumbersWithFiveDivisors := total_sum;
end;

var
  n, result: Integer;
  inputFile, outputFile: Text;

begin
  Assign(inputFile, 'C:\Users\Admin\Desktop\12 лаба\z3.in.txt'); 
  Reset(inputFile);
  ReadLn(inputFile, n); 
  Close(inputFile);

  result := SumNumbersWithFiveDivisors(n); 

  Assign(outputFile, 'C:\Users\Admin\Desktop\12 лаба\z3.out.txt'); 
  Rewrite(outputFile);
  WriteLn(outputFile, 'Сумма всех чисел от 1 до ', n, ' с ровно 5 делителями: ', result);
  Close(outputFile);
end.