CREATE OR ALTER VIEW TotalAHPAdmins AS
  SELECT 
        COUNT(*) AS TotalAdmins
 FROM   AuditEvents
 WHERE EventName = 'Token Issued Success'
 AND ClientID NOT IN ('school_admin_experience', 'student_experience');
