CREATE TABLE [dbo].[Horariox] (
    [IDHorario]      INT        IDENTITY (1, 1) NOT NULL,
    [HoraDisponible] TIME (7)   NULL,
    [IdMedico]       NCHAR (10) NULL,
    CONSTRAINT [PK_IDHorario] PRIMARY KEY CLUSTERED ([IDHorario] ASC)
);

