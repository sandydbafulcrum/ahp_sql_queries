 SELECT 
        COUNT(*) AS TotalAdmins
 FROM   AuditEvents
 WHERE [Timestamp] BETWEEN '2022-02-18' AND '2022-03-02'
 AND EventName = 'Token Issued Success'
 AND ClientID NOT IN ('school_admin_experience', 'student_experience');

