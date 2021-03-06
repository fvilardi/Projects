USE [Trainsquare]
GO
/****** Object:  StoredProcedure [dbo].[NewsletterSubscriptions_Insert]    Script Date: 5/12/2022 8:52:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
--AUTHOR: FRANK VILARDI
--CREATE DATE: 04/16/2022
--DESCRIPTION: This is a simple email and subscription database table 
--where we can simply describe whether an email has a subscription or not.

--CODE REVIEWER: 
--MODIFIED BY:
--MODIFIED DATE:
--CODE REVIEWER:
--NOTE:
-- =============================================

ALTER PROC [dbo].[NewsletterSubscriptions_Insert]
			@Email nvarchar(255)
			

AS

/*


DECLARE @Email nvarchar(255) = 'boogie@email.com'

EXECUTE dbo.NewsletterSubscriptions_Insert @Email
											
SELECT *
FROM dbo.NewsletterSubscriptions

*/

BEGIN

INSERT INTO [dbo].[NewsletterSubscriptions]
			([Email])

			VALUES
			(@Email)

END