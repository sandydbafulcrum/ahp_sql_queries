CREATE OR ALTER VIEW LoginByUserType AS
  Select 
  CAST(Timestamp as Date) AS PerDay, 
  ClientId, 
  COUNT(*) as EventCount 
from 
  AuditEvents 
WHERE 
  EventName = 'Token Issued Success' 
GROUP BY 
  ClientId, 
  CAST(Timestamp as Date);
