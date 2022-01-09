program SearchValueInArray;

var arr: array[1..10] of integer;
	x, i, pos: integer;

begin
	writeln("=Start Programu=");
	
	for i:=1 to 10 do read(arr[i]);
	read(x);
	
	pos:=-1; (*Pozycja poszukiwanej wartosci*)
	
	for i:=1 to 10 do
		if x=arr[i] then pos:=i;
	
	if pos=-1 then
		writeln("Wynik: false")
	else
		writeln("Wynik: true");
	
	writeln("=Koniec Programu=");
end.
