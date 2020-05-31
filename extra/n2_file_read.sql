set serveroutput on
declare
    f utl_file.file_type;
    line varchar(10000);
    id Artist.Artist_Id%type;
    name Artist.Artist_Name%type;
    a_birthplace Artist.BirthPlace%type;
    a_age Artist.Age%type;
    a_style Artist.Style%type;
    
begin
f:= utl_file.fopen('CSE','Artist_Info.csv','R');
if utl_file.is_open(f) then
    utl_file.get_line(f,line,10000);
loop begin
     utl_file.get_line(f,line,10000);
     if line is null then exit;
     end if;
     id:= regexp_substr(line,'[^,]+',1,1);
    name:= regexp_substr(line,'[^,]+',1,2);
    a_birthplace :=regexp_substr(line,'[^,]+',1,3);
    a_age :=regexp_substr(line,'[^,]+',1,4);
    a_style :=regexp_substr(line,'[^,]+',1,5);
    insert into Artist values(id,name,a_birthplace,a_age,a_style);
    commit;
    exception
    when no_data_found then exit;
    end;
end loop;
end if;
utl_file.fclose(f);
end;

show error