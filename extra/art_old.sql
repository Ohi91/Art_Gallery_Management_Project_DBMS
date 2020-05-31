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
    foreign key(Art_Id) references ArtWork(Art_Id) on delete cascade,
    foreign key(Cus_Id) references Customers(Cus_Id)on delete cascade,
    primary key(Art_Id ,Cus_Id) 
   );
insert into Artist (Artist_Id,Artist_Name,BirthPlace,Age,Style)
values (1,'Jackson Pollock','Denmark',37,'Pop');
insert into Artist (Artist_Id,Artist_Name,BirthPlace,Age,Style)
values (2,'Henri Matisse','England',54,'Contemporary');
insert into Artist (Artist_Id,Artist_Name,BirthPlace,Age,Style)
values (3,'Wassily Kandinsky','India',68,'Hyperrealism');
insert into Artist (Artist_Id,Artist_Name,BirthPlace,Age,Style)
values (4,'Andy Warhol','America',71,'Cubism');
insert into Artist (Artist_Id,Artist_Name,BirthPlace,Age,Style)
values (5,'Claude Monet','Mexico',86,'Post_Impressionism');
insert into Artist (Artist_Id,Artist_Name,BirthPlace,Age,Style)
values (6,'Pablo Picasso','Nepal',45,'Color Field');
insert into Artist (Artist_Id,Artist_Name,BirthPlace,Age,Style)
values (7,'August Renoir','Pakistan',56,'Minimalism');
insert into Artist (Artist_Id,Artist_Name,BirthPlace,Age,Style)
values (8,'Jan Vermeer','Spane',64,'Abstract_Expressionism');
insert into Artist (Artist_Id,Artist_Name,BirthPlace,Age,Style)
values (9,'Paul Cezanne','Argentina',78,'Surrealism');
insert into Artist (Artist_Id,Artist_Name,BirthPlace,Age,Style)
values (10,'Rembrandt','Mexico',81,'Modernism');
insert into Artist (Artist_Id,Artist_Name,BirthPlace,Age,Style)
values (11,'Sandro Botticeli','Brazil',91,'Photorealism');
insert into Artist (Artist_Id,Artist_Name,BirthPlace,Age,Style)
values (12,'Vincent van Gogh','Philippines',29,'Abstraction');
insert into Artist (Artist_Id,Artist_Name,BirthPlace,Age,Style)
values (13,'Gustav Klimt','India',39,'Impressionism');
insert into Artist (Artist_Id,Artist_Name,BirthPlace,Age,Style)
values (14,'Jan van Eyck','America',72,'Painterly');
insert into Artist (Artist_Id,Artist_Name,BirthPlace,Age,Style)
values (15,'Georges Seurat','Mexico',88,'Realism');
insert into ArtWork (Year,Title,Art_Id,Type,Price,Artist_Id,stock)
values (2015,'LastSupper',101,'Modernism',8000,1,20); 
insert into ArtWork (Year,Title,Art_Id,Type,Price,Artist_Id,stock)
values (2016,'The Desperate Man',102,'Contemporary',6000,2,94); 
insert into ArtWork (Year,Title,Art_Id,Type,Price,Artist_Id,stock)
values (2017,'Card_Players',103,'Futurism',7000,3,39); 
insert into ArtWork (Year,Title,Art_Id,Type,Price,Artist_Id,stock)
values (2018,'Frozen in Time',104,'Realism',9000,3,41); 
insert into ArtWork (Year,Title,Art_Id,Type,Price,Artist_Id,stock)
values (2019,'Old Wind From the North',105,'Photorealism',6700,5,41);    
insert into ArtWork (Year,Title,Art_Id,Type,Price,Artist_Id,stock)
values (2013,'The Flower Carrier',106,'Pop',5300,4,16); 
insert into ArtWork (Year,Title,Art_Id,Type,Price,Artist_Id,stock)
values (2010,'Sunflower',107,'Realism',2600,7,33); 
insert into ArtWork (Year,Title,Art_Id,Type,Price,Artist_Id,stock)
values (2003,'The Persistense of Memory',108,'Futurism',7700,6,45); 
insert into ArtWork (Year,Title,Art_Id,Type,Price,Artist_Id,stock)
values (2006,'Cafe Terrace at Night',109,'Painterly',6500,9,50); 
insert into ArtWork (Year,Title,Art_Id,Type,Price,Artist_Id,stock)
values (2012,'Composition 8',110,'Photorealism',7500,8,48);
insert into ArtWork (Year,Title,Art_Id,Type,Price,Artist_Id,stock)
values (2015,'The Garden of Earthly Delights',111,'Hyperrealism',4500,11,55); 
insert into ArtWork (Year,Title,Art_Id,Type,Price,Artist_Id,stock)
values (2012,'The Birth of Venus',112,'Photorealism',3600,12,35); 
insert into ArtWork (Year,Title,Art_Id,Type,Price,Artist_Id,stock)
values (2014,'Massacre of the Innocents',113,'Futurism',7000,15,30); 
insert into ArtWork (Year,Title,Art_Id,Type,Price,Artist_Id,stock)
values (2018,'The Dance',114,'Pop',9000,14,10); 
insert into ArtWork (Year,Title,Art_Id,Type,Price,Artist_Id,stock)
values (2019,'American Gothic',115,'Abstract_Expressionism',5500,15,29);                     
insert into Customers (Cus_Name,Address,Cus_Id,Budget) 
values ('A','Paris',1001,10000);
insert into Customers (Cus_Name,Address,Cus_Id,Budget) 
values ('B','California',1002,38000);
insert into Customers (Cus_Name,Address,Cus_Id,Budget) 
values ('C','Newyork',1003,9000);
insert into Customers (Cus_Name,Address,Cus_Id,Budget) 
values ('D','London',1004,15000);
insert into Customers (Cus_Name,Address,Cus_Id,Budget) 
values ('E','Texas',1005,10000);
insert into Customers (Cus_Name,Address,Cus_Id,Budget) 
values ('F','Singapore',1006,25000);
insert into Customers (Cus_Name,Address,Cus_Id,Budget) 
values ('G','Florida',1007,5000);
insert into Customers (Cus_Name,Address,Cus_Id,Budget) 
values ('H','Newyork',1008,5500);
insert into Customers (Cus_Name,Address,Cus_Id,Budget) 
values ('I','London',1009,8000);
insert into Customers (Cus_Name,Address,Cus_Id,Budget) 
values ('J','Bangkok',10010,6000);
insert into Customers (Cus_Name,Address,Cus_Id,Budget) 
values ('K','Athens',10011,12000);
insert into Customers (Cus_Name,Address,Cus_Id,Budget) 
values ('L','Montreal',10012,7500);
insert into Customers (Cus_Name,Address,Cus_Id,Budget) 
values ('M','Newyork',10013,5000);
insert into Customers (Cus_Name,Address,Cus_Id,Budget) 
values ('N','London',10014,9050);
insert into Customers (Cus_Name,Address,Cus_Id,Budget) 
values ('O','Australia',10015,1000);
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments) 
values (101,1001,2015,'Excellent painting');
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments) 
values (102,1002,2016,'It is so good');
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments) 
values (103,1003,2017,'Beautiful ArtWork');
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments) 
values (104,1004,2015,'Excellent painting');
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments) 
values (105,1005,2019,'Beautiful ArtWork');
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments) 
values (106,1006,2015,'Excellent painting');
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments) 
values (107,1007,2018,'It is so beatiful');
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments) 
values (108,1008,2018,'Beautiful ArtWork');
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments) 
values (109,1009,2015,'It is really good');
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments) 
values (110,10010,2019,'Not too Good!');
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments) 
values (111,10011,2015,'Excellent painting');
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments) 
values (112,10012,2016,'Too Good');
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments) 
values (113,10013,2017,'Amazing ArtWork');
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments) 
values (114,10014,2015,'Amazing ArtWork');
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments) 
values (115,10015,2018,'Too attractive');
commit;
