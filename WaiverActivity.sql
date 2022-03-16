CREATE OR ALTER VIEW WaiverActivity AS
   SELECT 
    COUNT(CASE WHEN RequestPath like '%Submission%' AND RequestMethod = 'PUT' OR RequestMethod = 'POST'  THEN 1 ELSE NULL END) as "Submission",
    COUNT(CASE WHEN RequestPath like '%Waiver' AND RequestMethod = 'POST' THEN 1 ELSE NULL END) as "Waiver",
    CAST(Timestamp as Date) AS PerDay
 FROM   AuditEvents
 GROUP BY CAST(Timestamp as Date);

