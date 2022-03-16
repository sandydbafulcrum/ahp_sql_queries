CREATE OR ALTER VIEW FailedLoginCountry AS
 SELECT
    COUNT(Id) as FailedLogin,
    RemoteIpAddress,
    CAST(Timestamp as Date) as PerDay
 FROM   AuditEvents
 WHERE EventName IN ('Token Issued Failure', 'User Login Failure')
 GROUP BY CAST(Timestamp as Date), RemoteIpAddress;
