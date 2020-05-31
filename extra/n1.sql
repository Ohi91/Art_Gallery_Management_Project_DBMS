drop table ArtGallery;
drop table Customers;
drop table ArtWork;
drop table Artist;
create table Artist(
    Artist_Id integer,
    Artist_Name varchar(50) not null,
    BirthPlace varchar(50),
    Age integer,
    Style varchar(50),
    primary key(Artist_Id)
    );