
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/27/2021 16:38:48
-- Generated from EDMX file: C:\Users\dasha\source\repos\VKR2\VKR2\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DashaVKR];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_LendBook_Book]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LendBook] DROP CONSTRAINT [FK_LendBook_Book];
GO
IF OBJECT_ID(N'[dbo].[FK_LendBook_Librarian]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LendBook] DROP CONSTRAINT [FK_LendBook_Librarian];
GO
IF OBJECT_ID(N'[dbo].[FK_LendBook_ReaderCard]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LendBook] DROP CONSTRAINT [FK_LendBook_ReaderCard];
GO
IF OBJECT_ID(N'[dbo].[FK_ReaderCard_Reader]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReaderCard] DROP CONSTRAINT [FK_ReaderCard_Reader];
GO
IF OBJECT_ID(N'[dbo].[FK_RequestList_Book]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RequestList] DROP CONSTRAINT [FK_RequestList_Book];
GO
IF OBJECT_ID(N'[dbo].[FK_RequestList_ReaderCard]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RequestList] DROP CONSTRAINT [FK_RequestList_ReaderCard];
GO
IF OBJECT_ID(N'[dbo].[FK_ReturnBook_Book]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReturnBook] DROP CONSTRAINT [FK_ReturnBook_Book];
GO
IF OBJECT_ID(N'[dbo].[FK_ReturnBook_Librarian]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReturnBook] DROP CONSTRAINT [FK_ReturnBook_Librarian];
GO
IF OBJECT_ID(N'[dbo].[FK_ReturnBook_ReaderCard]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReturnBook] DROP CONSTRAINT [FK_ReturnBook_ReaderCard];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Book]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Book];
GO
IF OBJECT_ID(N'[dbo].[LendBook]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LendBook];
GO
IF OBJECT_ID(N'[dbo].[Librarian]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Librarian];
GO
IF OBJECT_ID(N'[dbo].[Reader]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Reader];
GO
IF OBJECT_ID(N'[dbo].[ReaderCard]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ReaderCard];
GO
IF OBJECT_ID(N'[dbo].[RequestList]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RequestList];
GO
IF OBJECT_ID(N'[dbo].[ReturnBook]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ReturnBook];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[Tesk_bk]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tesk_bk];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Book'
CREATE TABLE [dbo].[Book] (
    [IdBook] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(50)  NOT NULL,
    [Autor] nvarchar(50)  NOT NULL,
    [Publish] nvarchar(50)  NOT NULL,
    [Year] int  NOT NULL,
    [Pages] int  NOT NULL,
    [Date] datetime  NOT NULL,
    [Sum] bit  NOT NULL
);
GO

-- Creating table 'LendBook'
CREATE TABLE [dbo].[LendBook] (
    [IdLendBook] int  NOT NULL,
    [IdReaderCard] int  NOT NULL,
    [IdLibrarian] int  NOT NULL,
    [IdBook] int  NOT NULL,
    [Date] datetime  NOT NULL
);
GO

-- Creating table 'Librarian'
CREATE TABLE [dbo].[Librarian] (
    [IdLibrarian] int  NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [Surname] nvarchar(50)  NOT NULL,
    [Patronymic] nvarchar(50)  NULL,
    [RegistrationDate] datetime  NOT NULL
);
GO

-- Creating table 'Reader'
CREATE TABLE [dbo].[Reader] (
    [IdReader] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [Surname] nvarchar(50)  NOT NULL,
    [Patronymic] nvarchar(50)  NULL,
    [RegistrationDate] datetime  NOT NULL
);
GO

-- Creating table 'ReaderCard'
CREATE TABLE [dbo].[ReaderCard] (
    [IdReaderCard] int  NOT NULL,
    [IdReader] int  NOT NULL,
    [InfoBook] nvarchar(50)  NULL,
    [InfoDebt] nvarchar(50)  NULL,
    [CreatedDate] datetime  NOT NULL
);
GO

-- Creating table 'RequestList'
CREATE TABLE [dbo].[RequestList] (
    [IdRequestList] int  NOT NULL,
    [IdReaderCard] int  NOT NULL,
    [IdBook] int  NOT NULL,
    [Date] datetime  NOT NULL
);
GO

-- Creating table 'ReturnBook'
CREATE TABLE [dbo].[ReturnBook] (
    [IdReturnBook] int  NOT NULL,
    [IdReaderCard] int  NOT NULL,
    [IdLibrarian] int  NOT NULL,
    [IdBook] int  NOT NULL,
    [Date] datetime  NOT NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'Tesk_bk'
CREATE TABLE [dbo].[Tesk_bk] (
    [ID] uniqueidentifier  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [IdBook] in table 'Book'
ALTER TABLE [dbo].[Book]
ADD CONSTRAINT [PK_Book]
    PRIMARY KEY CLUSTERED ([IdBook] ASC);
GO

-- Creating primary key on [IdLendBook] in table 'LendBook'
ALTER TABLE [dbo].[LendBook]
ADD CONSTRAINT [PK_LendBook]
    PRIMARY KEY CLUSTERED ([IdLendBook] ASC);
GO

-- Creating primary key on [IdLibrarian] in table 'Librarian'
ALTER TABLE [dbo].[Librarian]
ADD CONSTRAINT [PK_Librarian]
    PRIMARY KEY CLUSTERED ([IdLibrarian] ASC);
GO

-- Creating primary key on [IdReader] in table 'Reader'
ALTER TABLE [dbo].[Reader]
ADD CONSTRAINT [PK_Reader]
    PRIMARY KEY CLUSTERED ([IdReader] ASC);
GO

-- Creating primary key on [IdReaderCard] in table 'ReaderCard'
ALTER TABLE [dbo].[ReaderCard]
ADD CONSTRAINT [PK_ReaderCard]
    PRIMARY KEY CLUSTERED ([IdReaderCard] ASC);
GO

-- Creating primary key on [IdRequestList] in table 'RequestList'
ALTER TABLE [dbo].[RequestList]
ADD CONSTRAINT [PK_RequestList]
    PRIMARY KEY CLUSTERED ([IdRequestList] ASC);
GO

-- Creating primary key on [IdReturnBook] in table 'ReturnBook'
ALTER TABLE [dbo].[ReturnBook]
ADD CONSTRAINT [PK_ReturnBook]
    PRIMARY KEY CLUSTERED ([IdReturnBook] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [ID] in table 'Tesk_bk'
ALTER TABLE [dbo].[Tesk_bk]
ADD CONSTRAINT [PK_Tesk_bk]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [IdBook] in table 'LendBook'
ALTER TABLE [dbo].[LendBook]
ADD CONSTRAINT [FK_LendBook_Book]
    FOREIGN KEY ([IdBook])
    REFERENCES [dbo].[Book]
        ([IdBook])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LendBook_Book'
CREATE INDEX [IX_FK_LendBook_Book]
ON [dbo].[LendBook]
    ([IdBook]);
GO

-- Creating foreign key on [IdBook] in table 'RequestList'
ALTER TABLE [dbo].[RequestList]
ADD CONSTRAINT [FK_RequestList_Book]
    FOREIGN KEY ([IdBook])
    REFERENCES [dbo].[Book]
        ([IdBook])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RequestList_Book'
CREATE INDEX [IX_FK_RequestList_Book]
ON [dbo].[RequestList]
    ([IdBook]);
GO

-- Creating foreign key on [IdBook] in table 'ReturnBook'
ALTER TABLE [dbo].[ReturnBook]
ADD CONSTRAINT [FK_ReturnBook_Book]
    FOREIGN KEY ([IdBook])
    REFERENCES [dbo].[Book]
        ([IdBook])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ReturnBook_Book'
CREATE INDEX [IX_FK_ReturnBook_Book]
ON [dbo].[ReturnBook]
    ([IdBook]);
GO

-- Creating foreign key on [IdLibrarian] in table 'LendBook'
ALTER TABLE [dbo].[LendBook]
ADD CONSTRAINT [FK_LendBook_Librarian]
    FOREIGN KEY ([IdLibrarian])
    REFERENCES [dbo].[Librarian]
        ([IdLibrarian])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LendBook_Librarian'
CREATE INDEX [IX_FK_LendBook_Librarian]
ON [dbo].[LendBook]
    ([IdLibrarian]);
GO

-- Creating foreign key on [IdReaderCard] in table 'LendBook'
ALTER TABLE [dbo].[LendBook]
ADD CONSTRAINT [FK_LendBook_ReaderCard]
    FOREIGN KEY ([IdReaderCard])
    REFERENCES [dbo].[ReaderCard]
        ([IdReaderCard])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LendBook_ReaderCard'
CREATE INDEX [IX_FK_LendBook_ReaderCard]
ON [dbo].[LendBook]
    ([IdReaderCard]);
GO

-- Creating foreign key on [IdLibrarian] in table 'ReturnBook'
ALTER TABLE [dbo].[ReturnBook]
ADD CONSTRAINT [FK_ReturnBook_Librarian]
    FOREIGN KEY ([IdLibrarian])
    REFERENCES [dbo].[Librarian]
        ([IdLibrarian])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ReturnBook_Librarian'
CREATE INDEX [IX_FK_ReturnBook_Librarian]
ON [dbo].[ReturnBook]
    ([IdLibrarian]);
GO

-- Creating foreign key on [IdReader] in table 'ReaderCard'
ALTER TABLE [dbo].[ReaderCard]
ADD CONSTRAINT [FK_ReaderCard_Reader]
    FOREIGN KEY ([IdReader])
    REFERENCES [dbo].[Reader]
        ([IdReader])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ReaderCard_Reader'
CREATE INDEX [IX_FK_ReaderCard_Reader]
ON [dbo].[ReaderCard]
    ([IdReader]);
GO

-- Creating foreign key on [IdReaderCard] in table 'RequestList'
ALTER TABLE [dbo].[RequestList]
ADD CONSTRAINT [FK_RequestList_ReaderCard]
    FOREIGN KEY ([IdReaderCard])
    REFERENCES [dbo].[ReaderCard]
        ([IdReaderCard])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RequestList_ReaderCard'
CREATE INDEX [IX_FK_RequestList_ReaderCard]
ON [dbo].[RequestList]
    ([IdReaderCard]);
GO

-- Creating foreign key on [IdReaderCard] in table 'ReturnBook'
ALTER TABLE [dbo].[ReturnBook]
ADD CONSTRAINT [FK_ReturnBook_ReaderCard]
    FOREIGN KEY ([IdReaderCard])
    REFERENCES [dbo].[ReaderCard]
        ([IdReaderCard])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ReturnBook_ReaderCard'
CREATE INDEX [IX_FK_ReturnBook_ReaderCard]
ON [dbo].[ReturnBook]
    ([IdReaderCard]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------