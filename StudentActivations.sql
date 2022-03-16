CREATE OR ALTER VIEW StudentActivations AS
  SELECT
   CAST(Timestamp as Date) AS PerDay,
        COUNT(*) AS StudentActivations
 FROM   AuditEvents
 WHERE RequestPath = '/api/Users/ActivateAccount'
 GROUP BY CAST(Timestamp as Date);
