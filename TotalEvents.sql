CREATE OR ALTER VIEW TotalEvents AS
Select 
  count(*) as  TotalEvents
from 
  AuditEvents;
