-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE dbo.Sp_CalcularEdadporDni 
	-- Add the parameters for the stored procedure here
	@DNI nchar(10)='',
	@Edad INT OUTPUT
AS
BEGIN

SET NOCOUNT ON;
declare @fecha_nacimiento nchar(10)

select @fecha_nacimiento=m.FNacimiento from Medicox m inner join Usuariox u 
on m.IDUser = u.IDUsuario where DNI = @DNI

SELECT @Edad= DATEDIFF(YEAR, CONVERT(datetime, @fecha_nacimiento), GETDATE())
return @Edad
END
