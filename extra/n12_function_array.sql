CREATE OR REPLACE FUNCTION stock_of_art (aid IN artwork.art_id%type)  
RETURN number IS 
   total integer := 0; 
BEGIN 
   SELECT stock into total 
   FROM artwork where art_id = aid; 
    
   RETURN total; 
END; 

CREATE OR REPLACE FUNCTION art_of_type (ty IN artwork.type%type)  
RETURN number IS 
   total integer := 0; 
BEGIN 
   SELECT count(*) into total 
   FROM artwork where type = ty; 
    
   RETURN total; 
END; 

CREATE OR REPLACE FUNCTION customer_of_artist (aid IN artist.artist_id%type)  
RETURN number IS 
   total integer := 0; 
BEGIN 
   SELECT count(distinct(cus_id)) into total 
   FROM artwork natural join artgallery where artist_id = aid; 
    
   RETURN total; 
END; 

CREATE OR REPLACE FUNCTION artist_of_country (cnt IN artist.birthplace%type)  
RETURN number IS 
   total integer := 0; 
BEGIN 
   SELECT count(*) into total 
   FROM artist where birthplace = cnt; 
    
   RETURN total; 
END; 

SET SERVEROUTPUT ON
DECLARE
art_id integer;
type_ varchar(20);
artist_id integer;
country varchar(20);

begin
    art_id := 101; 
    dbms_output.put_line('stock of artwork no. '|| art_id ||' = '||stock_of_art(art_id));
    
    type_ := 'Pop';
    dbms_output.put_line('quantity of artwork type. '||type_||' = '||art_of_type(type_));
    
    artist_id := 2;
    dbms_output.put_line('total customers of artwork of artist no. '||artist_id||' = '||customer_of_artist(artist_id));
    
    country := 'India';
    dbms_output.put_line('total artist from '||country||' = '||artist_of_country(country));
    
end;
