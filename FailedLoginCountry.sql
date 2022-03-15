 SELECT 
    COUNT(Id),
    RemoteIpAddress,
    FORMAT(Timestamp,'yyyy-mm-dd') AS PerDay
 FROM   AuditEvents
 WHERE [Timestamp] BETWEEN '2022-02-18' AND '2022-03-02'
 AND EventName IN ('Token Issued Failure', 'User Login Failure')
 GROUP BY FORMAT(Timestamp,'yyyy-mm-dd'), RemoteIpAddress
 ORDER BY PerDay;
