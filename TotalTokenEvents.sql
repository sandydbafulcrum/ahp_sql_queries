CREATE OR ALTER VIEW TotalTokenEvents AS
SELECT 
        COUNT(*) AS TotalTokenEvents
 FROM   AuditEvents
 WHERE  Category = 'Token';
