USE [Trainsquare]
GO
/****** Object:  StoredProcedure [dbo].[ShoppingCart_Delete_ById]    Script Date: 5/12/2022 8:56:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
--AUTHOR: FRANK VILARDI
--CREATE DATE: 04/02/2022
--DESCRIPTION: The table that will hold the list of products "in the cart" that have not yet been purchased. 
--When products are purchased they will be moved out of the ShoppingCart and into the OrderDetails table.
--Updates to this table are essentially limited to updating quantities of a given InventoryId that is in the table.

--CODE REVIEWER: 
--MODIFIED BY:
--MODIFIED DATE:
--CODE REVIEWER:
--NOTE:
-- =============================================

ALTER PROC [dbo].[ShoppingCart_Delete_ById]
		@Id int

AS 

/*

Declare @Id int = 30

Execute dbo.ShoppingCart_Delete_ById @Id

Select *
From dbo.ShoppingCart

*/

BEGIN

DELETE FROM [dbo].[ShoppingCart]
WHERE Id = @Id

END