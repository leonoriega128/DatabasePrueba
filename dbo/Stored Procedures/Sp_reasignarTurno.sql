-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_reasignarTurno]
	-- Add the parameters for the stored procedure here
	@NumeroTurno int,
	@NuevaFecha date,
	@horaNueva time

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	declare @idhorario int
	select @idhorario = idhorario from Horariox where IdMedico = (select top 1 idMedico from Turnox where Numero_Turno = @NumeroTurno) and HoraDisponible = @horaNueva
    update Turnox set FechaTurno = @NuevaFecha, idHorario = @idhorario, Estado = 'Aceptado' where Numero_Turno = @NumeroTurno
	select * from Turnox where Numero_Turno = @NumeroTurno
END
