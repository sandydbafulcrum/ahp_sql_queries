SELECT 
        COUNT(*) AS TotalAuth
 FROM   AuditEvents
 WHERE [Timestamp] BETWEEN '2022-02-18' AND '2022-03-02'
 AND Category = 'Authentication'
