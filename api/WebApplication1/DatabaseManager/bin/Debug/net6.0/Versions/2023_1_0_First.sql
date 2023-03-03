if not exists (select * from sysobjects where name='JewelryType')
    create table JewelryType (Id int identity (1,1), Name nvarchar (100), PRIMARY KEY (Id))

if not exists (select * from sysobjects where name='Jewelry')
    create table Jewelry (Id int identity (1,1),ShopId nvarchar(100), Name nvarchar (100),Weight Float (5), TypeId int, Quantity int,Price float(10), PhotoFilename nvarchar(500), IsDeleted bit, PRIMARY KEY (Id),
    FOREIGN KEY (TypeId) REFERENCES JewelryType(Id))

if not exists (select * from sysobjects where name='Sales')
    create table Sales (Id int identity (1,1),JewelryId int,PriceAtSale float(10), DateOfTransaction DATE, PRIMARY KEY (Id),
    FOREIGN KEY (JewelryId) REFERENCES Jewelry(Id))



insert into dbo.JewelryType values ('Bratara');
insert into dbo.JewelryType values ('Pandant');
insert into dbo.JewelryType values ('Cercei');


insert into dbo.Jewelry values ('Shopid111','Bratara888',2.500,1,3,30,'pozacubratara.jpg',0);
insert into dbo.Jewelry values ('Shopid222','Bratara222',3.500,1,1,40,'pozacubratara.jpg',0);
insert into dbo.Jewelry values ('Shopid333','Pandant111',4.500,2,4,50,'pozacubratara.jpg',0);
