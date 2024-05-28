-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RegistrarUsuario]
	@NombUser varchar(max)='',
	@Contraseña varchar(max)='',
	@Correo varchar(max)='',
	@NombM varchar(max)='',
	@ApellM varchar(max)='',
	@DNI varchar(8)='',
	@Fnacimiento date = '',
	@IDUser int = '',
	@Edad int,
	@CodEspecialidad int,
	@bit tinyint = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	if(@bit=0)
		begin 
		insert into Usuariox (NombreU,ContraseñaU,Estado,AltaFecha,TipoUsuario,Email)
					Values	 (@NombUser,@Contraseña,'Alta',GETDATE(),'Medico',@Correo)
		select @IDUser = @@IDENTITY 
		exec @Edad = Sp_CalcularEdad 
		insert into Medicox (Nombre,Apellido,DNI,FNacimiento,Edad,IDUser,CodEspecialidad)
					Values	(@NombM,@ApellM,@DNI,@Fnacimiento,@Edad,@IDUser,@CodEspecialidad)
		end
END
