USE master
GO
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Vagrant@123'
GO
CREATE CERTIFICATE dbm_certificate
FROM GIEL = '/var/opt/mssql/date/dbm_certificate.cer'
WITH PRIVATE KEY (
FILE = '/var/opt/mssql/data/dbm_certificate.pvk',
DECRYPTION BY PASSWORD = 'Vagrant@123'
)
