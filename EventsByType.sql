Select 
  FORMAT(Timestamp, 'yyyy-mm-dd') AS PerDay, 
  EventName, 
  COUNT(*) as EventCount 
from 
  AuditEvents 
GROUP BY 
  EventName, 
  FORMAT(Timestamp, 'yyyy-mm-dd');
