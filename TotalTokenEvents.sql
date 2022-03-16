SELECT 
        COUNT(*) AS TotalTokenEvents
 FROM   AuditEvents
 WHERE  Category = 'Token';
