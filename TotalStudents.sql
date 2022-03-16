 SELECT 
        COUNT(*) AS TotalStudent
 FROM   AuditEvents
 WHERE EventName = 'Token Issued Success'
 AND ClientID = 'student_experience';
