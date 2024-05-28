-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_CalcularEdad]
	@fecha_nacimiento nchar(10)='',
	@Edad INT OUTPUT
AS
BEGIN

SET NOCOUNT ON;

SELECT @Edad= DATEDIFF(YEAR, CONVERT(datetime, @fecha_nacimiento), GETDATE())
return @Edad
END
