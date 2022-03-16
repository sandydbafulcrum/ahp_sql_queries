 SELECT
    COUNT(Id) as Counts,
    RemoteIpAddress,
    CAST(Timestamp as Date) AS PerDay
 FROM   AuditEvents
 WHERE 
 EventName IN ('Token Issued Success', 'User Login Success')
 GROUP BY CAST(Timestamp as Date), RemoteIpAddress
 ORDER BY PerDay;
