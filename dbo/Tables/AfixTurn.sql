CREATE TABLE [dbo].[AfixTurn] (
    [IDAfi]    INT NULL,
    [NroTurno] INT NULL,
    CONSTRAINT [FK__AfixTurn__NroTur__440B1D61] FOREIGN KEY ([NroTurno]) REFERENCES [dbo].[Turnox] ([IDTurno])
);

