USE [SMDB]
GO
/****** Object:  StoredProcedure [dbo].[addUser]    Script Date: 12/16/2017 6:06:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[addUser]
@username varchar(50),
@password varchar(50),
@type int =0
as
begin
insert into UserLogin(UserName,UserPassword,UserType) values(@username,@password,@type)
end