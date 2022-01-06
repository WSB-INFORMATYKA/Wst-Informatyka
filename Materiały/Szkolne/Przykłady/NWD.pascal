program NWD;
type tab=array[1..10] of integer;
     lst = record 
                elementy: tab;
                ile: integer
             end;
var 
    a, b, c: integer; (* a,b - liczby >1, których NWD poszukujemy, c- wyliczony NWD(a,b)*)
    x, i, j, k, l: integer; (* x - zm. pom. do liczenia czynn. pierwszych; i,j,k,l - zm. iterac.*)
    p, q, r: lst;  (*  p i q listy niepuste i niemalejące! 
                       p - lista czynników pierwszych liczby a,
                       q - lista czynników pierwszych liczby b,
                       r - lista elementów wspólnych p i q   *)
 
begin 
    writeln('poczatek');
    read(a); x:=a; k:=2; i:=1;
    (*tu oblicz czynniki pierwsze liczby a i umieść w liście p, 
      nie zapomnij o zapisaniu dlugości listy!*)
 
    while x>1 do if (x div k) * k = x then
    	begin
    		x:=x div k;
    		p.elementy[i]:=k;
    		i:=i+1;
    	end
    	else k:=k+1;
 
    p.ile:=i-1;
 
    read(b); x:=b; k:=2; i:=1;
    (*tu oblicz czynniki pierwsze liczby b i umieść w liście q, 
      nie zapomnij o zapisaniu dlugości listy!*)   
 
    while x>1 do if (x div k) * k = x then
    	begin
    		x:=x div k;
    		q.elementy[i]:=k;
    		i:=i+1;
    	end
    	else k:=k+1;
 
    q.ile:=i-1;
 
    writeln('NWD(',a,',',b,')=?'); 
    writeln('p.ile=',p.ile,' ','q.ile=',q.ile);
    write('Czynniki pierwsze ',a,': ');
    (*tu wypisz listę czynników pierwszych liczby a*)
 
    for i:=1 to p.ile do write(p.elementy[i],' ');
    writeln(' ');
 
	write('Czynniki pierwsze ',b,': ');
	(*tu wypisz listę czynników pierwszych liczby b*)
 
	for i:=1 to q.ile do write(q.elementy[i],' ');
    writeln(' ');
 
    l:=1; j:=1; k:=0;
   (*tu oblicz listę r elementów wspolnych p i q - i przebiega p, j przebiega q, k przebiega r*)
 
   while (l<=p.ile) and (j<=q.ile) do if p.elementy[l] = q.elementy[j] then
		begin
			r.elementy[k+1]:= p.elementy[l];
			l:=l+1; j:=j+1; k:=k+1;
		end
		else if p.elementy[l] < q.elementy[j] then l:=l+1
		else j:=j+1;
 
	r.ile:=k;
 
    write('Czynniki pierwsze wspólne: ');
   (*tu wypisz r - listę elementów wspólnych *)
 
   for i:=1 to r.ile do write(r.elementy[i],' ');
   writeln(' ');
 
   (*tu wylicz c - iloczyn elementów listy wspólnej*) 
 
   c:=1;
   for i:=1 to r.ile do c:=r.elementy[i]*c;
 
    writeln('NWD(',a,',',b,')=',c);
    writeln('koniec');
end.
