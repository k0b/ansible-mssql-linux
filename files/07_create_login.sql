CREATE LOGIN [pacemakerLogin] WITH PASSWORD = N'Vagrant@123'
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [pacemakerLogin]
GO
