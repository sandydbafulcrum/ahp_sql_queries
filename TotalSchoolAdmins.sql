 SELECT 
        COUNT(*) AS TotalSchoolAdmins
 FROM   AuditEvents
 WHERE EventName = 'Token Issued Success'
 AND ClientID = 'school_admin_experience';
