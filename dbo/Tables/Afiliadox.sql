CREATE TABLE [dbo].[Afiliadox] (
    [IDTipoUserA] INT          IDENTITY (1, 1) NOT NULL,
    [Nombre]      VARCHAR (50) NOT NULL,
    [Apellido]    VARCHAR (50) NULL,
    [DNI]         VARCHAR (10) NULL,
    [FNacimiento] DATE         NULL,
    [Edad]        INT          NULL,
    [IDUser]      INT          NULL,
    [NroTurno]    INT          NULL,
    CONSTRAINT [PK_IDTipoUserA] PRIMARY KEY CLUSTERED ([IDTipoUserA] ASC),
    FOREIGN KEY ([IDUser]) REFERENCES [dbo].[Usuariox] ([IDUsuario]),
    CONSTRAINT [FK__Afiliadox__NroTu__4316F928] FOREIGN KEY ([NroTurno]) REFERENCES [dbo].[Turnox] ([IDTurno])
);

