  set serveroutput on
  declare
  f utl_file.file_type;
   num integer;
   cnt integer;
   type artwork_type is varray (20) of artwork.type%type; 
   type_list artwork_type := artwork_type();  
  begin
   num := 1;
   cnt := 1;
   type_list.extend(20);
   
   FOR cursor1 IN (select distinct(type) from  artwork)
          LOOP
            type_list(num) := cursor1.type;
            num:=num+1;
          END LOOP;
   
   while cnt<=num
   loop
        f:= utl_file.fopen('CSE',concat(to_char(type_list(cnt)),'_artwork.csv'),'w');
        utl_file.put(f,'year'||','||'artist_name'||','||'title'||','||'type'||','||'price'||','||'stock');
        utl_file.new_line(f);
        for c_record in (select year,artist_name,title,type,price,stock from artwork natural join artist where type = type_list(cnt))
        loop
            utl_file.put(f,c_record.year||','||c_record.artist_name||','||c_record.title||','||c_record.type||','||c_record.price||','||c_record.stock);
            utl_file.new_line(f);
        end loop;
        utl_file.fclose(f);
        --dbms_output.put_line(dbl_list(cnt));
        cnt:=cnt+1; 
   end loop;
end;