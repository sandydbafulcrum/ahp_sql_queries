SELECT 
        COUNT(*) AS TotalAuth
 FROM   AuditEvents
 WHERE Category = 'Authentication';
