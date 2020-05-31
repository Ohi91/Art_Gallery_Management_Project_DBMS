SET SERVEROUTPUT ON
declare
comment VARCHAR(50);
Art_price ArtWork.Price%type;
Art_title ArtWork.Title%type:='Frozen in Time';
begin
select Price into Art_price from ArtWork where Title=Art_title;
IF Art_price>5000
THEN 
comment:='EXPENSIVE';
ELSE
comment:='NOT EXPENSIVE';
END IF;
DBMS_OUTPUT.PUT_LINE(comment);
END;
/