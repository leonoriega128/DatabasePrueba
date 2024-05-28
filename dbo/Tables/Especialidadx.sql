CREATE TABLE [dbo].[Especialidadx] (
    [IDEspecialidad] INT          IDENTITY (1, 1) NOT NULL,
    [Descripcion]    VARCHAR (40) NOT NULL,
    CONSTRAINT [PK_IDEspecialidad] PRIMARY KEY CLUSTERED ([IDEspecialidad] ASC)
);

