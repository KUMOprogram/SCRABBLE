program scrabbleascii;
uses wincrt;
var a:array[1..1000,1..10] of char;
    b:array[1..10] of char;
    sum:array[1..1000] of integer;
    p:array[1..1000] of integer;
    max,n,i,play:integer;

BEGIN
randomize;
write('posoi paixtes eiste; ');
readln(n);
for play:=1 to n do
begin
for i:=1 to 10 do
begin
a[play,i]:=char(random(26)+97);
end;
writeln('paixths ',play,': ',a[play]);
readln;
end;

for play:=1 to n do
begin
sum[play]:=0;
p[play]:=play;
write('dwse thn le3h sou paixth ',play,': ');
for i:=1 to 10 do
begin
read(b[i]);
sum[play]:=sum[play]+ord(b[i]);
if b[i]=char(13) then
begin
sum[play]:=sum[play]-13;
i:=10;
end;
end;
readln;
end;

writeln(' ');

max:=1;
for play:=1 to n do
begin
writeln('paixths ',p[play],' me pontous ',sum[play]);
if sum[play]>sum[max] then
begin
max:=play;
end;
end;

writeln(' ');

writeln('NIKITHS EINAI O PAIXTHS ',max);
END.
