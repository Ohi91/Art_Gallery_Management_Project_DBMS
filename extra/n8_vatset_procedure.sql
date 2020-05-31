set serveroutput on
declare 
   name       ArtWork.Title%type;
   time ArtWork.Year%type;
   
procedure vatset(idno  IN ArtWork.Artist_Id %TYPE) IS
begin
   
   UPDATE ArtWork set Price=Price+Price * (.15)
   where Artist_Id =idno;
   commit;
end;   
begin

   for counter in 1..1
   loop

      select Title,Year
      into name, time
      from ArtWork
      where
      Artist_Id = counter;

      DBMS_OUTPUT.PUT_LINE ('SERIAL NO ->' || counter);
      DBMS_OUTPUT.PUT_LINE ('TITLE of Art ->' || name);
      DBMS_OUTPUT.PUT_LINE ('DATE of Transaction ->' || time);
      vatset(counter);
      DBMS_OUTPUT.PUT_LINE ('-----------');
     
   END LOOP;

   EXCEPTION
      WHEN others THEN
         DBMS_OUTPUT.PUT_LINE ('No data is found');
END;
/