Select 
  FORMAT(Timestamp, 'yyyy-mm-dd') AS PerDay, 
  ClientId, 
  COUNT(*) as EventCount 
from 
  AuditEvents 
WHERE 
  EventName = 'Token Issued Success' 
GROUP BY 
  ClientId, 
  FORMAT(Timestamp, 'yyyy-mm-dd');
