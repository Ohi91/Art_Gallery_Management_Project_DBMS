/*<TOAD_FILE_CHUNK>*/
create table ArtWork(
    Year integer,
    Artist_Id integer,
    Title varchar(50),
    Art_Id integer,
    Type varchar(50),
    Price integer,
    stock integer,
    primary key(Art_Id),
    foreign key(Artist_Id) references Artist(Artist_Id)
    );  
create table Customers(
    Cus_Name varchar(20),
    Address varchar(20),
    Cus_Id integer,
    Budget integer,
    primary key(Cus_Id)
   );
create table ArtGallery(
    Art_Id integer,
    Cus_Id integer,
    Year_sell integer,
    comments varchar(50),
    Amount integer,
    foreign key(Art_Id) references ArtWork(Art_Id) on delete cascade,
    foreign key(Cus_Id) references Customers(Cus_Id)on delete cascade,
    primary key(Art_Id ,Cus_Id) 
   );

create or replace trigger art_trigger1
after insert or update of Amount on ArtGallery
for each row

declare
     x ArtWork.stock%type;

begin
    select stock into x from ArtWork where Art_Id=:new.Art_Id;
     x:=x-:new.Amount;
     update ArtWork set stock=x where Art_Id=:new.Art_Id;
end; 
/

/*<TOAD_FILE_CHUNK>*/
show error;
select * from ArtWork;

