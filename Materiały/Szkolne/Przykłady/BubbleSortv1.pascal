program BubbleSortv1;

var arr: array[1..10] of integer;
	i, j, tmp, n: integer;

begin
	writeln("=Start programu=");
	
	n:=10;
	for i:=1 to n do read(arr[i]);
	
	for i:=1 to n-1 do
		for j:=1 to n-1 do
			if arr[j] > arr[j+1] then
				begin
					tmp:=arr[j]; arr[j]:=arr[j+1]; arr[j+1]:=tmp;
				end;
	
	for i:=1 to n do write(arr[i]," ");
	writeln(" ");
	
	writeln("=Koniec programu=");
end.
