CREATE TABLE [SalesLT].[CallLogKasimirP] (
    [CallID]      INT            IDENTITY (1, 1) NOT NULL,
    [CallTime]    DATETIME       DEFAULT (getdate()) NOT NULL,
    [SalesPerson] NVARCHAR (256) NOT NULL,
    [CustomerID]  INT            NOT NULL,
    [PhoneNumber] NVARCHAR (25)  NOT NULL,
    [Notes]       NVARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([CallID] ASC),
    FOREIGN KEY ([CustomerID]) REFERENCES [SalesLT].[Customer] ([CustomerID])
);
GO

