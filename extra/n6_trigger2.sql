create or replace trigger art_trigger2
after delete or insert or update on artwork
for each row
when (new.Art_Id>100)
declare
    price_dif integer;
begin 
    price_dif := :new.Price - :old.Price;
    dbms_output.put_line('Old price: '|| :old.Price);
    dbms_output.put_line('New price: '|| :new.Price);
    dbms_output.put_line('Price difference: '|| price_dif);
 end;

 set serveroutput on
declare 
begin
   update ArtWork set Price = Price + 500
   where Art_Id =101;
   
   insert into ArtWork (Year,Title,Art_Id,Type,Price,Artist_Id,stock)
   values (2039,'American Gothic2',116,'Abstract_Expressionism',12500,15,29);
   
end;