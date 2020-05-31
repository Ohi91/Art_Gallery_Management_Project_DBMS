SET SERVEROUTPUT ON

DECLARE



PROCEDURE quantity_artwork_type_artist (aid IN artist.artist_id%type) IS 
BEGIN 
    DBMS_OUTPUT.PUT_LINE('Quantity of each type of artwork by artist no. '||aid);
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------');
    
    FOR cursor1 IN (select type,count(*) as quantity from artwork where artist_id = aid group by type)
          LOOP
            DBMS_OUTPUT.PUT_LINE('artwork type: ' || cursor1.type ||
                               ',  quantity: ' || cursor1.quantity
                               );
          END LOOP;
    DBMS_OUTPUT.PUT_LINE('_________________________________________');
END;

PROCEDURE fans_of_artist (aid IN artist.artist_id%type) IS 
BEGIN 
    DBMS_OUTPUT.PUT_LINE('Quantity of collected artworks by each fan of artist no. '||aid);
    DBMS_OUTPUT.PUT_LINE('----------------------------------------------------------------');
    
    FOR cursor1 IN (select cus_name from artist natural join (select * from artwork natural join (select * from artgallery natural join customers)) where artist_id = aid group by cus_name)
          LOOP
            DBMS_OUTPUT.PUT_LINE('fan name: ' || cursor1.cus_name
                               );
          END LOOP;
    DBMS_OUTPUT.PUT_LINE('_________________________________________');
END;

PROCEDURE artist_of_type (ty IN artwork.type%type) IS 
BEGIN 
    DBMS_OUTPUT.PUT_LINE('Quantity of artworks by each artist of type - '||ty);
    DBMS_OUTPUT.PUT_LINE('----------------------------------------------------------------');
    
    FOR cursor1 IN (select artist_name from artist natural join (select * from artwork natural join (select * from artgallery natural join customers)) where type = ty group by artist_name)
          LOOP
            DBMS_OUTPUT.PUT_LINE('artist name: ' || cursor1.artist_name
                               );
          END LOOP;
    DBMS_OUTPUT.PUT_LINE('_________________________________________');
END;

PROCEDURE sales_of_artist_year (year_ IN artgallery.year_sell%type) IS 
BEGIN 
    DBMS_OUTPUT.PUT_LINE('Sales of artworks by artist in - '||year_);
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------');
    
    FOR cursor1 IN (select artist_name from artist natural join (select * from artwork natural join (select * from artgallery natural join customers)) where year_sell = year_ group by artist_name)
          LOOP
            DBMS_OUTPUT.PUT_LINE('artist name: ' || cursor1.artist_name );
                         
                               
          END LOOP;
    DBMS_OUTPUT.PUT_LINE('_________________________________________');
END;

begin
    quantity_artwork_type_artist(2);
    fans_of_artist(2);
    artist_of_type('Pop');
    sales_of_artist_year(2018);
end;
