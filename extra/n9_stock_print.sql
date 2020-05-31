set serveroutput on
declare
    artid artwork.Art_Id%type;
    artname artwork.Title%type;
    artprice artwork.Price%type;
    artstock artwork.stock%type;

    cursor art_cursor1 is
        select Art_Id,Title,Price,stock from artwork where stock>=25;
begin
    open art_cursor1;
    loop 
        fetch art_cursor1 into artid,artname,artprice,artstock;
            exit when art_cursor1%notfound;
            dbms_output.put_line(artid||' '||artname||' '||artprice||' '||artstock);
            
    end loop;
    close art_cursor1;
end;    