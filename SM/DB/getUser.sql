USE [SMDB]
GO
/****** Object:  StoredProcedure [dbo].[getUser]    Script Date: 12/16/2017 6:07:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[getUser]
as
begin
select * from UserLogin
end
