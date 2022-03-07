 SELECT FORMAT(Timestamp,'yyyy-mm-dd') AS PerDay,
        COUNT(*) AS TotalSchoolAdmins
 FROM   AuditEvents
 WHERE [Timestamp] BETWEEN '2022-02-18' AND '2022-03-02'
 AND EventName = 'Token Issued Success'
 AND ClientID NOT IN ('school_admin_experience', 'student_experience')
 GROUP BY FORMAT(Timestamp,'yyyy-mm-dd')
 ORDER BY PerDay;