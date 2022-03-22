# ahp_sql_queries
SQL queries for AHP Database Development

## Task Purpose
 The purpose of this task is to create a sql report that will clone the datadog Care26 app insight dashboard because currently it only shows the last two weeks report of logs. Unlike logs stored in the database is indefinite and there is much lower cost in the storage resource.
 
 ## View Table Creation
A view contains rows and columns, just like a real table. The fields in a view are fields from one or more real tables in the database. You can add SQL statements and functions to a view and present the data as if the data were coming from one single table. A view is created with the `CREATE VIEW` statement.

View sample query

```
CREATE OR ALTER VIEW WaiverEnrollment AS
 SELECT 
    COUNT(CASE WHEN RequestPath like '%/Enrollment/QuickAdd' THEN 1 ELSE NULL END) as "Enrollment QuickAdd",
    COUNT(CASE WHEN RequestPath like '%/Enrollment/EmergencyAdd' THEN 1 ELSE NULL END) as "Enrollment EmergencyAdd",
    COUNT(CASE WHEN RequestPath like '%/Enrollment' THEN 1 ELSE NULL END) as "Enrollment",
    COUNT(CASE WHEN RequestPath like '%/Waiver' THEN 1 ELSE NULL END) as "Waiver",
    CAST(Timestamp as Date) as PerDay
 FROM   AuditEvents
 WHERE RequestMethod = 'POST'
 AND RequestMethod NOT IN ('OPTIONS', 'PUT', 'DELETE', 'GET')
 AND EventStatus != 'Error'
 GROUP BY CAST(Timestamp as Date);
```
 
 ## Datadog Defined
 Datadog is a monitoring and analytics tool for information technology (IT) and DevOps teams that can be used to determine performance metrics as well as event monitoring for infrastructure and cloud services.
 
 Datadog sample queries
 
```
 resource_name:("api/{schoolId:guid}/Enrollment/QuickAdd" OR "POST api/{schoolId:guid}/Enrollment/EmergencyAdd" OR "POST api/{schoolId:guid}/Enrollment" OR "POST api/{schoolId:guid}/Waiver") -@http.method:(OPTIONS OR PUT OR DELETE OR GET) service:implementations-commandsapi -status:error $Environment
 ```
 
 ## Reports to be Replicated
 
* Enrollments and Waivers
* Students Activations
* Total Users
* Total Students
* Total School Admins
* Total AHP Admins
* Logins by User Type
* Successful Logins by Country
* Failed Logins by Country
* Total Events 
* Total Authorization Events
* Total Token Events
* Events by Type
* Waiver Activity

 ## Success Criteria
 Be able to replicate the count in the datadog using the database as the source of data.
 
 ## Challanges Encountered
 Datadog uses its own timestamp as date range while the database uses the timezone of the user as the time of transaction of the log.
