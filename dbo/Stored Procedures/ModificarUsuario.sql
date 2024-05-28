-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ModificarUsuario] 
	@NombreUser varchar(max)='',
	@Contraseña varchar(max)='',
	@Email varchar(max)='',
	@Nombre varchar(max)='',
	@Apellido varchar(max)='',
	@FNacimiento date='',
	@DNI varchar(8)='',
	@bit tinyint = 0,
	@CodEspecialidad varchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	
	SET NOCOUNT ON;
	declare @idUsers int, @edad int
    if(@bit=0)
		begin 
			select u.NombreU, u.ContraseñaU, u.Email, m.Edad, m.Nombre, m.Apellido,m.FNacimiento 
			from Usuariox u inner join Medicox m on u.IDUsuario = m.IDUser inner join Especialidadx e 
			on m.CodEspecialidad = e.IDEspecialidad where u.Estado = 'Alta' and m.DNI = @DNI
			select 'Usuario encontrado'

		end
	else
		begin
			select @idUsers = u.IDUsuario from Medicox m inner join Usuariox  u
			on m.IDUser = u.IDUsuario
			where  DNI = @DNI

			exec @edad= Sp_CalcularEdad @FNacimiento

			update Medicox set Nombre = @Nombre, Apellido = @Apellido,
			Edad = @edad, CodEspecialidad = @CodEspecialidad where IDUser = @idUsers and 
			DNI = @DNI

			update Usuariox SET Estado = 'Alta', NombreU = @NombreUser ,ContraseñaU = @Contraseña
			,Email =@Email where IDUsuario = @idUsers
			select 'Usuario modificado'
		end
END
