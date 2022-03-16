CREATE OR ALTER VIEW TotalAuthentications AS
SELECT 
        COUNT(*) AS TotalAuth
 FROM   AuditEvents
 WHERE Category = 'Authentication';
