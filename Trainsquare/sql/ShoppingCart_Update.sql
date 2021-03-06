USE [Trainsquare]
GO
/****** Object:  StoredProcedure [dbo].[ShoppingCart_Update]    Script Date: 5/12/2022 8:57:29 AM ******/
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

ALTER PROC [dbo].[ShoppingCart_Update]
		@Id int
		,@WorkShopId int
		,@InventoryId int
		,@Quantity int
		,@User int
		

AS

/*

Declare @Id int = 26

Declare @WorkShopId int = 1
		,@InventoryId int = 3
		,@Quantity int = 13
		,@User int = 227
		

		Execute dbo.ShoppingCart_Update @Id 
										,@WorkShopId 
										,@InventoryId 
										,@Quantity 
										,@User 
										 

		Select *
		From dbo.ShoppingCart

*/

BEGIN

UPDATE [dbo].[ShoppingCart]

SET [WorkShopId] = @WorkShopId
	,[InventoryId] = @InventoryId
	,[Quantity] = @Quantity
	,[CreatedBy] = @User
	,[ModifiedBy] = @User

	WHERE Id = @Id

END