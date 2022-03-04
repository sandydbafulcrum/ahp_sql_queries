 SELECT FORMAT(Timestamp,'yyyy-mm-dd') AS PerDay,
        COUNT(*) AS StudentActivations
 FROM   AuditEvents
 WHERE [Timestamp] BETWEEN '2022-02-18' AND '2022-03-02'
 AND RequestPath = '/api/Users/ActivateAccount'
 GROUP BY FORMAT(Timestamp,'yyyy-mm-dd')
 ORDER BY PerDay;