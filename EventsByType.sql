Select 
  CAST(Timestamp as Date) AS PerDay, 
  EventName, 
  COUNT(*) as EventCount 
from 
  AuditEvents 
GROUP BY 
  EventName, 
  CAST(Timestamp as Date);
