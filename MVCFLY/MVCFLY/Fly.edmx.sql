
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/17/2014 14:49:10
-- Generated from EDMX file: C:\Users\Michelle\Documents\GitHub\MvcOnTheFly\MVCFLY\MVCFLY\Fly.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [hello];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Employees'
CREATE TABLE [dbo].[Employees] (
    [EmpID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Location] nvarchar(max)  NOT NULL,
    [SSN] nvarchar(max)  NOT NULL,
    [Phone] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Hours'
CREATE TABLE [dbo].[Hours] (
    [HoursID] int IDENTITY(1,1) NOT NULL,
    [DepID] nvarchar(max)  NOT NULL,
    [Vacation] nvarchar(max)  NOT NULL,
    [OT] nvarchar(max)  NOT NULL,
    [RegHours] nvarchar(max)  NOT NULL,
    [Holiday] nvarchar(max)  NOT NULL,
    [EmployeeEmpID] int  NOT NULL
);
GO

-- Creating table 'Departments'
CREATE TABLE [dbo].[Departments] (
    [DeptId] int IDENTITY(1,1) NOT NULL,
    [EmpID] nvarchar(max)  NOT NULL,
    [IT] nvarchar(max)  NOT NULL,
    [Accounting] nvarchar(max)  NOT NULL,
    [Maintence] nvarchar(max)  NOT NULL,
    [HoursHoursID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [EmpID] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [PK_Employees]
    PRIMARY KEY CLUSTERED ([EmpID] ASC);
GO

-- Creating primary key on [HoursID] in table 'Hours'
ALTER TABLE [dbo].[Hours]
ADD CONSTRAINT [PK_Hours]
    PRIMARY KEY CLUSTERED ([HoursID] ASC);
GO

-- Creating primary key on [DeptId] in table 'Departments'
ALTER TABLE [dbo].[Departments]
ADD CONSTRAINT [PK_Departments]
    PRIMARY KEY CLUSTERED ([DeptId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [EmployeeEmpID] in table 'Hours'
ALTER TABLE [dbo].[Hours]
ADD CONSTRAINT [FK_EmployeeHours]
    FOREIGN KEY ([EmployeeEmpID])
    REFERENCES [dbo].[Employees]
        ([EmpID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeHours'
CREATE INDEX [IX_FK_EmployeeHours]
ON [dbo].[Hours]
    ([EmployeeEmpID]);
GO

-- Creating foreign key on [HoursHoursID] in table 'Departments'
ALTER TABLE [dbo].[Departments]
ADD CONSTRAINT [FK_HoursDepartment]
    FOREIGN KEY ([HoursHoursID])
    REFERENCES [dbo].[Hours]
        ([HoursID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HoursDepartment'
CREATE INDEX [IX_FK_HoursDepartment]
ON [dbo].[Departments]
    ([HoursHoursID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------