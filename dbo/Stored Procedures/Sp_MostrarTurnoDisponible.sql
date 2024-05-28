-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_MostrarTurnoDisponible]
 @idMedico int,
 @fechaTurno nchar(10) 
AS
BEGIN
	
	SET NOCOUNT ON;
	select h.HoraDisponible,'Turno Disponible' Estado from Horariox h left join Turnox t
	on h.IDHorario = t.idHorario 
	where h.IDHorario not in (select IDHorario from Turnox where idHorario is not null and FechaTurno = @fechaTurno) and h.IdMedico = @idMedico
END
