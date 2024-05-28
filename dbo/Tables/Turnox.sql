CREATE TABLE [dbo].[Turnox] (
    [IDTurno]      INT        IDENTITY (1, 1) NOT NULL,
    [Numero_Turno] INT        NOT NULL,
    [FechaTurno]   DATE       NULL,
    [idMedico]     INT        NULL,
    [Estado]       NCHAR (10) NULL,
    [idHorario]    INT        NULL,
    CONSTRAINT [PK_IDTurno] PRIMARY KEY CLUSTERED ([IDTurno] ASC)
);

