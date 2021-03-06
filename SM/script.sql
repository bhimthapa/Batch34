USE [SMDB]
GO
/****** Object:  StoredProcedure [dbo].[updateUserinformation]    Script Date: 12/25/2017 6:17:55 PM ******/
DROP PROCEDURE [dbo].[updateUserinformation]
GO
/****** Object:  StoredProcedure [dbo].[getUserSignUp]    Script Date: 12/25/2017 6:17:55 PM ******/
DROP PROCEDURE [dbo].[getUserSignUp]
GO
/****** Object:  StoredProcedure [dbo].[getUserNames]    Script Date: 12/25/2017 6:17:55 PM ******/
DROP PROCEDURE [dbo].[getUserNames]
GO
/****** Object:  StoredProcedure [dbo].[getUserByUserName]    Script Date: 12/25/2017 6:17:55 PM ******/
DROP PROCEDURE [dbo].[getUserByUserName]
GO
/****** Object:  StoredProcedure [dbo].[getUser]    Script Date: 12/25/2017 6:17:55 PM ******/
DROP PROCEDURE [dbo].[getUser]
GO
/****** Object:  StoredProcedure [dbo].[GetStockQtyById]    Script Date: 12/25/2017 6:17:55 PM ******/
DROP PROCEDURE [dbo].[GetStockQtyById]
GO
/****** Object:  StoredProcedure [dbo].[GetStock]    Script Date: 12/25/2017 6:17:55 PM ******/
DROP PROCEDURE [dbo].[GetStock]
GO
/****** Object:  StoredProcedure [dbo].[GetItemIds]    Script Date: 12/25/2017 6:17:55 PM ******/
DROP PROCEDURE [dbo].[GetItemIds]
GO
/****** Object:  StoredProcedure [dbo].[GetItemByID]    Script Date: 12/25/2017 6:17:55 PM ******/
DROP PROCEDURE [dbo].[GetItemByID]
GO
/****** Object:  StoredProcedure [dbo].[DeleteUserDetail]    Script Date: 12/25/2017 6:17:55 PM ******/
DROP PROCEDURE [dbo].[DeleteUserDetail]
GO
/****** Object:  StoredProcedure [dbo].[deleteUser]    Script Date: 12/25/2017 6:17:55 PM ******/
DROP PROCEDURE [dbo].[deleteUser]
GO
/****** Object:  StoredProcedure [dbo].[adduserdetail]    Script Date: 12/25/2017 6:17:55 PM ******/
DROP PROCEDURE [dbo].[adduserdetail]
GO
/****** Object:  StoredProcedure [dbo].[addUser]    Script Date: 12/25/2017 6:17:55 PM ******/
DROP PROCEDURE [dbo].[addUser]
GO
/****** Object:  StoredProcedure [dbo].[AddSales]    Script Date: 12/25/2017 6:17:55 PM ******/
DROP PROCEDURE [dbo].[AddSales]
GO
/****** Object:  StoredProcedure [dbo].[AddPurchase]    Script Date: 12/25/2017 6:17:55 PM ******/
DROP PROCEDURE [dbo].[AddPurchase]
GO
/****** Object:  StoredProcedure [dbo].[AddItems]    Script Date: 12/25/2017 6:17:55 PM ******/
DROP PROCEDURE [dbo].[AddItems]
GO
ALTER TABLE [dbo].[Stock] DROP CONSTRAINT [FK__Stock__ItemId__65370702]
GO
ALTER TABLE [dbo].[Sales] DROP CONSTRAINT [FK__Sales__ItemId__5224328E]
GO
ALTER TABLE [dbo].[Purchase] DROP CONSTRAINT [FK__Purchase__ItemId__236943A5]
GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 12/25/2017 6:17:55 PM ******/
DROP TABLE [dbo].[UserLogin]
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 12/25/2017 6:17:55 PM ******/
DROP TABLE [dbo].[Stock]
GO
/****** Object:  Table [dbo].[SignUp]    Script Date: 12/25/2017 6:17:55 PM ******/
DROP TABLE [dbo].[SignUp]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 12/25/2017 6:17:55 PM ******/
DROP TABLE [dbo].[Sales]
GO
/****** Object:  Table [dbo].[Purchase]    Script Date: 12/25/2017 6:17:55 PM ******/
DROP TABLE [dbo].[Purchase]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 12/25/2017 6:17:55 PM ******/
DROP TABLE [dbo].[Items]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 12/25/2017 6:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Items](
	[ItemId] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [varchar](50) NOT NULL,
	[ItemType] [varchar](50) NOT NULL,
	[ItemDescription] [varchar](50) NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Purchase]    Script Date: 12/25/2017 6:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Purchase](
	[PurchaseId] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NULL,
	[ItemQty] [int] NULL,
	[ItemPrice] [real] NULL,
	[CreatedDate] [date] NULL,
	[CreatedBy] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PurchaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 12/25/2017 6:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sales](
	[SalesId] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NULL,
	[ItemQuantity] [int] NULL,
	[ItemPrice] [float] NULL,
	[SalesDate] [date] NULL,
	[SalesPerson] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[SalesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SignUp]    Script Date: 12/25/2017 6:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SignUp](
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[street] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[statename] [varchar](50) NULL,
	[zip] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[userpassword] [varchar](50) NULL,
	[retypeuserpassword] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 12/25/2017 6:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[StockId] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NULL,
	[ItemQty] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[StockId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 12/25/2017 6:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserLogin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[UserPassword] [varchar](50) NULL,
	[UserType] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Items] ON 

INSERT [dbo].[Items] ([ItemId], [ItemName], [ItemType], [ItemDescription], [Quantity]) VALUES (1, N'Apple', N'Grocery', N'Fruits', 10)
INSERT [dbo].[Items] ([ItemId], [ItemName], [ItemType], [ItemDescription], [Quantity]) VALUES (2, N'Round Neck Pillow', N'Travel', N'Neck Pillow', 10)
INSERT [dbo].[Items] ([ItemId], [ItemName], [ItemType], [ItemDescription], [Quantity]) VALUES (3, N'Sports Shoes', N'Sports', N'Shoes', 10)
INSERT [dbo].[Items] ([ItemId], [ItemName], [ItemType], [ItemDescription], [Quantity]) VALUES (4, N'2% fat Milk', N'Grocery', N'Milk', 12)
INSERT [dbo].[Items] ([ItemId], [ItemName], [ItemType], [ItemDescription], [Quantity]) VALUES (5, N'Shirt', N'Apperal', N'Dress Shirt', 10)
INSERT [dbo].[Items] ([ItemId], [ItemName], [ItemType], [ItemDescription], [Quantity]) VALUES (6, N'5L LP Gas', N'Gas', N'LP Gas', 10)
INSERT [dbo].[Items] ([ItemId], [ItemName], [ItemType], [ItemDescription], [Quantity]) VALUES (7, N'Orange', N'grocery', N'Fruits', 10)
INSERT [dbo].[Items] ([ItemId], [ItemName], [ItemType], [ItemDescription], [Quantity]) VALUES (8, N'Banana', N'Grocery', N'Fruits', 10)
INSERT [dbo].[Items] ([ItemId], [ItemName], [ItemType], [ItemDescription], [Quantity]) VALUES (11, N'Kiwi', N'Grocery', N'Fruits', 5)
INSERT [dbo].[Items] ([ItemId], [ItemName], [ItemType], [ItemDescription], [Quantity]) VALUES (12, N'Kiwi', N'Grocery', N'Fruits', 16)
INSERT [dbo].[Items] ([ItemId], [ItemName], [ItemType], [ItemDescription], [Quantity]) VALUES (13, N'Kiwi', N'Grocery', N'Fruits', 25)
INSERT [dbo].[Items] ([ItemId], [ItemName], [ItemType], [ItemDescription], [Quantity]) VALUES (14, N'Soda', N'Drinks', N'Coke', 10)
SET IDENTITY_INSERT [dbo].[Items] OFF
SET IDENTITY_INSERT [dbo].[Purchase] ON 

INSERT [dbo].[Purchase] ([PurchaseId], [ItemId], [ItemQty], [ItemPrice], [CreatedDate], [CreatedBy]) VALUES (21, 11, 25, 2, CAST(N'2017-12-25' AS Date), N'Abc')
SET IDENTITY_INSERT [dbo].[Purchase] OFF
SET IDENTITY_INSERT [dbo].[Sales] ON 

INSERT [dbo].[Sales] ([SalesId], [ItemId], [ItemQuantity], [ItemPrice], [SalesDate], [SalesPerson]) VALUES (12, 11, 2, 3, CAST(N'2017-12-25' AS Date), N'Abc')
INSERT [dbo].[Sales] ([SalesId], [ItemId], [ItemQuantity], [ItemPrice], [SalesDate], [SalesPerson]) VALUES (13, 11, 23, 4, CAST(N'2017-12-25' AS Date), N'Abc')
SET IDENTITY_INSERT [dbo].[Sales] OFF
INSERT [dbo].[SignUp] ([first_name], [last_name], [street], [city], [statename], [zip], [email], [username], [userpassword], [retypeuserpassword]) VALUES (N'8', N'8', N'8', N'8', N'8', N'8', N'8', N'8', N'8', N'8')
INSERT [dbo].[SignUp] ([first_name], [last_name], [street], [city], [statename], [zip], [email], [username], [userpassword], [retypeuserpassword]) VALUES (N'9', N'9', N'9', N'9', N'9', N'9', N'9', N'9', N'9', N'9')
INSERT [dbo].[SignUp] ([first_name], [last_name], [street], [city], [statename], [zip], [email], [username], [userpassword], [retypeuserpassword]) VALUES (N'Toya', N'Adhikari', N'9140 Barrick Street', N'Fairfax', N'Virginia', N'22315', N'toyaadhikari@gmail.com', N'toya', N'class2017', N'class2017')
INSERT [dbo].[SignUp] ([first_name], [last_name], [street], [city], [statename], [zip], [email], [username], [userpassword], [retypeuserpassword]) VALUES (N'Amit', N'Singh', N'123 Ringroad', N'Alexandria', N'Virginia', N'22315', N'abc123@gmail.com', N'amit', N'abc123', N'abc123')
SET IDENTITY_INSERT [dbo].[Stock] ON 

INSERT [dbo].[Stock] ([StockId], [ItemId], [ItemQty]) VALUES (7, 11, 25)
INSERT [dbo].[Stock] ([StockId], [ItemId], [ItemQty]) VALUES (8, 11, -2)
INSERT [dbo].[Stock] ([StockId], [ItemId], [ItemQty]) VALUES (9, 11, -23)
SET IDENTITY_INSERT [dbo].[Stock] OFF
SET IDENTITY_INSERT [dbo].[UserLogin] ON 

INSERT [dbo].[UserLogin] ([Id], [UserName], [UserPassword], [UserType]) VALUES (1, N'Abc', N'123', 1)
INSERT [dbo].[UserLogin] ([Id], [UserName], [UserPassword], [UserType]) VALUES (2, N'Abc1', N'123', 1)
INSERT [dbo].[UserLogin] ([Id], [UserName], [UserPassword], [UserType]) VALUES (3, N'Abc2', N'123', 1)
INSERT [dbo].[UserLogin] ([Id], [UserName], [UserPassword], [UserType]) VALUES (4, N'Abc3', N'123', 1)
INSERT [dbo].[UserLogin] ([Id], [UserName], [UserPassword], [UserType]) VALUES (5, N'Abc4', N'123', 1)
INSERT [dbo].[UserLogin] ([Id], [UserName], [UserPassword], [UserType]) VALUES (6, N'Abc5', N'123', 1)
INSERT [dbo].[UserLogin] ([Id], [UserName], [UserPassword], [UserType]) VALUES (7, N'NewUser', N'123', 0)
INSERT [dbo].[UserLogin] ([Id], [UserName], [UserPassword], [UserType]) VALUES (8, N'xyz', N'321', 0)
INSERT [dbo].[UserLogin] ([Id], [UserName], [UserPassword], [UserType]) VALUES (9, N'', N'', 0)
INSERT [dbo].[UserLogin] ([Id], [UserName], [UserPassword], [UserType]) VALUES (10, N'8', N'8', 0)
INSERT [dbo].[UserLogin] ([Id], [UserName], [UserPassword], [UserType]) VALUES (11, N'9', N'9', 0)
SET IDENTITY_INSERT [dbo].[UserLogin] OFF
ALTER TABLE [dbo].[Purchase]  WITH CHECK ADD FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([ItemId])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([ItemId])
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([ItemId])
GO
/****** Object:  StoredProcedure [dbo].[AddItems]    Script Date: 12/25/2017 6:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddItems]
@itemname varchar(50),
@itemtype varchar(50),
@itemdescription varchar(50),
@quantity int 
as
begin
insert into Items(ItemName,ItemType,ItemDescription,Quantity) values(@itemname,@itemtype,@itemdescription,@quantity )
end
GO
/****** Object:  StoredProcedure [dbo].[AddPurchase]    Script Date: 12/25/2017 6:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddPurchase](
@itemid int,
@itemquantity int,
@itemprice float)
--@createddate date,
--@createdby varchar(50))

as
begin
insert into Purchase (ItemId,ItemQty,ItemPrice,CreatedDate,CreatedBy)values(@itemid,@itemquantity,@itemprice,getdate(),'Abc')
insert into Stock(ItemId,ItemQty) values(@itemid,@itemquantity) 
end
GO
/****** Object:  StoredProcedure [dbo].[AddSales]    Script Date: 12/25/2017 6:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddSales](
@itemid int,
@itemquantity int,
@itemprice float)
as
begin

insert into Sales (ItemId,ItemQuantity,ItemPrice,SalesDate,SalesPerson) values (@itemid, @itemquantity, @itemprice,getdate(),'Abc')
insert into Stock(ItemId,ItemQty) values(@itemid,(0-@itemquantity)) 
end
GO
/****** Object:  StoredProcedure [dbo].[addUser]    Script Date: 12/25/2017 6:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[addUser]
@username varchar(50),
@password varchar(50),
@type int =0
as
begin
insert into UserLogin(UserName,UserPassword,UserType) values(@username,@password,@type)
end
GO
/****** Object:  StoredProcedure [dbo].[adduserdetail]    Script Date: 12/25/2017 6:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[adduserdetail](
@first_name varchar(50),
@last_name varchar(50),
@street varchar(50),
@city varchar(50),
@statename varchar(50),
@zip varchar(50),
@email varchar(50),
@username varchar(50),
@userpassword varchar(50),
@retypeuserpassword varchar(50))
as
begin

BEGIN TRY
Begin Transaction

insert into [dbo].[SignUp] values(@first_name,@last_name,@street,@city,@statename,@zip,@email,@username,@userpassword,@retypeuserpassword)
insert into [dbo].UserLogin(UserName,UserPassword) values(@username,@userpassword)
commit
end try
begin catch

if @@TRANCOUNT >0
rollback
end catch
end
GO
/****** Object:  StoredProcedure [dbo].[deleteUser]    Script Date: 12/25/2017 6:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[deleteUser]
@username varchar(50)
as
begin
delete  from SignUp where username=@username
end

GO
/****** Object:  StoredProcedure [dbo].[DeleteUserDetail]    Script Date: 12/25/2017 6:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[DeleteUserDetail]
@username varchar(50)
as
begin
delete from SignUp where username=@username
end
GO
/****** Object:  StoredProcedure [dbo].[GetItemByID]    Script Date: 12/25/2017 6:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[GetItemByID]
@id int
as 
Begin
Select * from Items
where ItemId=@id
End
GO
/****** Object:  StoredProcedure [dbo].[GetItemIds]    Script Date: 12/25/2017 6:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[GetItemIds]
as 
Begin
Select ItemId from Items
End
GO
/****** Object:  StoredProcedure [dbo].[GetStock]    Script Date: 12/25/2017 6:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetStock]
as 

begin

select I.ItemId,i.ItemName, Sum(ItemQty) as Qty from stock S
inner join Items I
on I.ItemId=s.ItemId

group by I.ItemId,I.ItemName

end
GO
/****** Object:  StoredProcedure [dbo].[GetStockQtyById]    Script Date: 12/25/2017 6:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetStockQtyById](
@id int
)
as 
begin

select 
case when  sum(ItemQty) is null then 0
else sum(ItemQty) 
end as ItemQty
 from Stock where ItemId=@id
end
GO
/****** Object:  StoredProcedure [dbo].[getUser]    Script Date: 12/25/2017 6:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[getUser]
as
begin
select * from UserLogin
end

GO
/****** Object:  StoredProcedure [dbo].[getUserByUserName]    Script Date: 12/25/2017 6:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[getUserByUserName]
@username varchar(50)
as 
Begin
Select * from SignUp
where username=@username
End
GO
/****** Object:  StoredProcedure [dbo].[getUserNames]    Script Date: 12/25/2017 6:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[getUserNames]
as 
Begin
Select username from SignUp
End

GO
/****** Object:  StoredProcedure [dbo].[getUserSignUp]    Script Date: 12/25/2017 6:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[getUserSignUp]
as
begin
select * from SignUp
end
GO
/****** Object:  StoredProcedure [dbo].[updateUserinformation]    Script Date: 12/25/2017 6:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[updateUserinformation]

@street varchar(50),
@city varchar(50),
@statename varchar(50),
@zip varchar(50),
@email varchar(50),
@username varchar(50),
@userpassword varchar(50)=''

as
begin

BEGIN TRY
Begin Transaction

--Update with Password
if @userpassword<> ''
begin 
update SignUp set street=@street,city=@city,statename=@statename,zip=@zip,email=@email,userpassword=@userpassword
where username=@username

update UserLogin set UserPassword=@userpassword
where UserName=@username
end

--update without password
if @userpassword =''
begin
update SignUp set street=@street,city=@city,statename=@statename,zip=@zip,email=@email
where username=@username
end 
commit
END TRY
begin catch

if @@TRANCOUNT >0
rollback
end catch
end
GO
