 SELECT 
    COUNT(CASE WHEN RequestPath like '%Submission%' AND RequestMethod = 'PUT' OR RequestMethod = 'POST'  THEN 1 ELSE NULL END) as "Submission",
    COUNT(CASE WHEN RequestPath like '%Waiver' AND RequestMethod = 'POST' THEN 1 ELSE NULL END) as "Waiver",
    FORMAT(Timestamp,'yyyy-mm-dd') AS PerDay
 FROM   AuditEvents
 WHERE [Timestamp] BETWEEN '2022-02-18' AND '2022-03-02'
 GROUP BY FORMAT(Timestamp,'yyyy-mm-dd')
 ORDER BY PerDay;
