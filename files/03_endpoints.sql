CREATE ENDPOINT [Hadr_endpoint]
AS TCP (LISTNER_PORT = 5022)
FOR DATABASE_MIRRORING (
ROLE = WITNESS,
AUTHENTICATION = CERTIFICATE dbm_certificate,
ENCRYPTION = REQUIRED ALGORITHM AES
);
ALTER ENDPOINT [Hadr_endpoint] STATE = STARTED;
