 SELECT 
    COUNT(CASE WHEN RequestPath like '%/Enrollment/QuickAdd' THEN 1 ELSE NULL END) as "Enrollment QuickAdd",
    COUNT(CASE WHEN RequestPath like '%/Enrollment/EmergencyAdd' THEN 1 ELSE NULL END) as "Enrollment EmergencyAdd",
    COUNT(CASE WHEN RequestPath like '%/Enrollment' THEN 1 ELSE NULL END) as "Enrollment",
    COUNT(CASE WHEN RequestPath like '%/Waiver' THEN 1 ELSE NULL END) as "Waiver",
    FORMAT(Timestamp,'yyyy-mm-dd') AS PerDay
 FROM   AuditEvents
 WHERE [Timestamp] BETWEEN '2022-02-18' AND '2022-03-02'
 AND RequestMethod = 'POST'
 AND RequestMethod NOT IN ('OPTIONS', 'PUT', 'DELETE', 'GET')
 AND EventStatus != 'Error'
 GROUP BY FORMAT(Timestamp,'yyyy-mm-dd')
 ORDER BY PerDay;
