program MaxValueInArray;

var arr: array[1..10] of integer;
	max, i: integer;
begin
	writeln("=Start Programu=");
	
	for i:=1 to 10 do read(arr[i]);
	
	max:=arr[1];
	for i:=2 to 10 do
		if arr[i] > max then max:=arr[i];
	
	writeln("Wynik: ",max);
	writeln("=Koniec Programu=");
end.
