-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BuscarDni]
	@dni nchar(8)='37736858'
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	if(@dni != '' or len(@dni)=8 )
	begin
		select m.Nombre, m.Apellido, e.Descripcion, u.Email  from Usuariox u 
		inner join Medicox m on u.IDUsuario = m.IDUser inner join Especialidadx e 
		on m.CodEspecialidad = e.IDEspecialidad where u.Estado = 'Alta' and m.DNI = @dni
    end
     else
   begin
		select 'Debe ingresar un DNI Valido'
   end
END
