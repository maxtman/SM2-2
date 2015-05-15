unit 
  tuna;




  
interface
uses Dict;
var
  badguys, goodguys: Dictionary;

   
  
procedure favor(friend: nametype);
procedure unfavor(foe: nametype);
procedure report(subject: nametype);  


implementation

procedure favor(friend: nametype);

begin
  Insrt(friend,goodguys);
  Delte(friend, badguys);
end;  

procedure unfavor(foe: nametype);

begin
  Insrt(foe,badguys);
  Delte(foe, goodguys);
end;   
  
procedure report(subject: nametype);

begin
  if IsMemb(subject, goodguys) then
      writeln(subject,' - is friend')
  else if IsMemb(subject, badguys) then
    writeln(subject,' - is foe')
  else 
    writeln('No data ', subject);
end;  

end.
