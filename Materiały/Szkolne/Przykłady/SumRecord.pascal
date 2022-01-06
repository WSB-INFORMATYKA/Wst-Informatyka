program SumRecord;
type userData = record
					username: string[10];
					money: integer
				end;
	tab = array[1..10] of userData;
	lst = record
				elementy: tab;
				ile: integer
			end;

var data: lst;
	i, money: integer; (*Pomocnicze zmienne*)
	username: string[10];
	a, sum: integer; (*a -> Ilosc danych, sum -> Suma*)

begin

	readln(a); data.ile := a;
	
	(*Tworzenie Kartoteki*)
	for i:=1 to data.ile do
	begin
		readln(username); readln(money);
		data.elementy[i].username := username;
		data.elementy[i].money := money;
	end;
	
	for i:=1 to data.ile do sum := sum + data.elementy[i].money;
	writeln('Suma: ', sum);

end.
