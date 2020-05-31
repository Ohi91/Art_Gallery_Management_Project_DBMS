/*<TOAD_FILE_CHUNK>*/
set serveroutput on
declare
    f utl_file.file_type;
    cursor c is select * from Artist;
begin
    f :=utl_file.fopen('CSE','Artist_Info_Updated.csv','w');
    utl_file.put(f,'Artist_Id'||','||'Artist_Name'||','||'Birthplace'||','||'Age'||','||'Style');
    utl_file.new_line(f);
    for c_record in c
        loop
          utl_file.put(f,c_record.Artist_Id||','||c_record.Artist_Name||','||c_record.BirthPlace||','||c_record.Age||','||c_record.Style);
          utl_file.new_line(f);
        end loop;  
    utl_file.fclose(f);
end;
/

/*<TOAD_FILE_CHUNK>*/
commit;
select * from Artist;

