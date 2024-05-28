CREATE TABLE [dbo].[Usuariox] (
    [IDUsuario]   INT          IDENTITY (1, 1) NOT NULL,
    [NombreU]     VARCHAR (20) NOT NULL,
    [ContraseñaU] VARCHAR (20) NOT NULL,
    [Estado]      VARCHAR (10) NOT NULL,
    [AltaFecha]   DATE         NOT NULL,
    [TipoUsuario] VARCHAR (20) NULL,
    [Email]       VARCHAR (20) NULL,
    CONSTRAINT [PK_IDUsuario] PRIMARY KEY CLUSTERED ([IDUsuario] ASC)
);

