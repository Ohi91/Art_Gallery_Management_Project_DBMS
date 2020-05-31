set serveroutput on 
declare 
f utl_file.file_type;
line varchar(1000);
year artwork.year%type;
artist_id artwork.artist_id%type;
title artwork.title%type;
art_id artwork.art_id%type;
type_ artwork.type%type;
price artwork.price%type;
stock artwork.price%type;

begin
f:= utl_file.fopen('CSE','artwork_entry.csv','r');
if utl_file.is_open(f) then
utl_file.get_line(f,line,1000);
loop begin
utl_file.get_line(f,line,1000);
if line is null then exit;
end if;
year:= regexp_substr(line,'[^,]+',1,1);
artist_id:= regexp_substr(line,'[^,]+',1,2);
title:= regexp_substr(line,'[^,]+',1,3);
art_id:= regexp_substr(line,'[^,]+',1,4);
type_:= regexp_substr(line,'[^,]+',1,5);
price:= regexp_substr(line,'[^,]+',1,6);
stock:= regexp_substr(line,'[^,]+',1,7);
insert into artwork values(year,artist_id,title,art_id,type_,price,stock);
commit;
exception when no_data_found then exit;
end;
end loop;
end if;
--utl_file_fclose(f);
end;

/
