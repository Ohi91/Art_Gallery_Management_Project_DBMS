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
values (2012,'Composition',110,'Photorealism',7500,8,48);
insert into ArtWork (Year,Title,Art_Id,Type,Price,Artist_Id,stock)
values (2015,'The Garden of Earthly Delights',111,'Hyperrealism',4500,11,55); 
insert into ArtWork (Year,Title,Art_Id,Type,Price,Artist_Id,stock)
values (2012,'The Birth of Venus',112,'Photorealism',3600,2,35); 
insert into ArtWork (Year,Title,Art_Id,Type,Price,Artist_Id,stock)
values (2014,'Massacre of the Innocents',113,'Contemporary',7000,2,30); 
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
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments,Amount) 
values (101,1001,2015,'Excellent painting',1);
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments,Amount) 
values (102,1002,2016,'It is so good',2);
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments,Amount) 
values (103,1003,2017,'Beautiful ArtWork',3);
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments,Amount) 
values (104,1004,2015,'Excellent painting',1);
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments,Amount) 
values (105,1005,2019,'Beautiful ArtWork',2);
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments,Amount) 
values (106,1006,2015,'Excellent painting',3);
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments,Amount) 
values (107,1007,2018,'It is so beatiful',1);
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments,Amount) 
values (108,1008,2018,'Beautiful ArtWork',2);
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments,Amount) 
values (109,1009,2015,'It is really good',3);
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments,Amount) 
values (110,10010,2019,'Not too Good!',1);
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments,Amount) 
values (111,10011,2015,'Excellent painting',2);
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments,Amount) 
values (112,10012,2016,'Too Good',3);
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments,Amount) 
values (113,10013,2017,'Amazing ArtWork',1);
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments,Amount) 
values (114,10014,2015,'Amazing ArtWork',2);
insert into ArtGallery (Art_Id,Cus_Id,Year_sell,comments,Amount) 
values (115,10015,2018,'Too attractive',2);

commit;
