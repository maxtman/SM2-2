unit
  Dict;
  
interface

const 
  
  B=10;
  
type
  nametype = string[50];
  myint = 0..9;

  celltype = record
    element: nametype;
    next: ^celltype;
  end;
  Dictionary = array[0..B-1] of ^celltype;
  
function h( x: nametype): myint;
procedure InitDict( var A: Dictionary);
function IsMemb(x: nametype; var A: Dictionary): boolean;  
procedure Insrt(x: nametype; var A: Dictionary);
procedure Delte(x: nametype; var A: Dictionary);

implementation

function h( x: nametype): myint;
var 
  i, sum:integer;
begin
  sum:= 0;
  for i:= 1 to 10 do
    sum:= sum + ord(x[i]);
  h:= sum mod B;
end;  
  

procedure InitDict( var A: Dictionary);
var

  i: integer;

begin

  for i:= 1 to b - 1 do
    A[i]:= nil 

end;

function IsMemb(x: nametype; var A: Dictionary): boolean; 
var
  current: ^celltype;
begin
  current:= A[h(x)];
  while current <> nil do
      if current^.element = x then
        result:= true
      else 
        current:= current^.next;
  result:= false;
end;

procedure Insrt(x: nametype; var A: Dictionary);

var
  bucket: integer;
  oldheader: ^celltype;
begin
  if not IsMemb(x, A) then begin
      bucket:= h(x);
      oldheader:= A[bucket];
      new(A[bucket]);
      A[bucket]^.element:= x;
      A[bucket]^.next:= oldheader;
  end
end;

procedure Delte(x: nametype; var A: Dictionary);
var
  bucket: integer;
  current: ^celltype;
  
begin
   bucket:= h(x);
   if A[bucket]^.element = x then 
      A[bucket]:= a[bucket]^.next
   else begin
      current:= A[bucket];
      while current^.next <> nil  do
        if current^.next^.element = x then begin
            current^.next:= current^.next^.next;
            break;
        end
        else 
          current:= current^.next
      end
   end;
end.   
