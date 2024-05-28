CREATE TABLE [dbo].[Medicox] (
    [IDTipoUserM]     INT          IDENTITY (1, 1) NOT NULL,
    [Nombre]          VARCHAR (50) NOT NULL,
    [Apellido]        VARCHAR (50) NULL,
    [DNI]             VARCHAR (10) NULL,
    [FNacimiento]     DATE         NULL,
    [Edad]            INT          NULL,
    [IDUser]          INT          NULL,
    [CodEspecialidad] INT          NULL,
    [idTurno]         INT          NULL,
    CONSTRAINT [PK_IDTipoUserM] PRIMARY KEY CLUSTERED ([IDTipoUserM] ASC),
    FOREIGN KEY ([CodEspecialidad]) REFERENCES [dbo].[Especialidadx] ([IDEspecialidad]),
    FOREIGN KEY ([IDUser]) REFERENCES [dbo].[Usuariox] ([IDUsuario]),
    CONSTRAINT [FK__Medicox__idTurno__45F365D3] FOREIGN KEY ([idTurno]) REFERENCES [dbo].[Turnox] ([IDTurno])
);

