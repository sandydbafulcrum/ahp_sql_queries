CREATE OR ALTER VIEW TotalUsers AS
 SELECT 
        COUNT(*) AS TotalUsers
 FROM   AuditEvents
 WHERE EventName = 'Token Issued Success';
