CREATE OR ALTER VIEW WaiverEnrollment AS
 SELECT 
    COUNT(CASE WHEN RequestPath like '%/Enrollment/QuickAdd' THEN 1 ELSE NULL END) as "Enrollment QuickAdd",
    COUNT(CASE WHEN RequestPath like '%/Enrollment/EmergencyAdd' THEN 1 ELSE NULL END) as "Enrollment EmergencyAdd",
    COUNT(CASE WHEN RequestPath like '%/Enrollment' THEN 1 ELSE NULL END) as "Enrollment",
    COUNT(CASE WHEN RequestPath like '%/Waiver' THEN 1 ELSE NULL END) as "Waiver",
    CAST(Timestamp as Date) as PerDay
 FROM   AuditEvents
 WHERE RequestMethod = 'POST'
 AND RequestMethod NOT IN ('OPTIONS', 'PUT', 'DELETE', 'GET')
 AND EventStatus != 'Error'
 GROUP BY CAST(Timestamp as Date);

