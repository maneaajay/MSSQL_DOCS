--Server role
SELECT 'EXEC sp_addsrvrolemember @loginame = ''' + l.name
          + ''', @rolename = ''' + R.name + ''';' AS 'SQL'
FROM sys.server_role_members AS RM
  JOIN sys.server_principals AS L
    ON RM.member_principal_id = L.principal_id
  JOIN sys.server_principals AS R
    ON RM.role_principal_id = R.principal_id
 
-- Query to handle server permissions
-- We need to consider server, server_principal (login), and endpoint
SELECT CASE P.state WHEN 'W' THEN
         'GRANT ' + P.permission_name + ' TO [' + L.Name + '] WITH GRANT OPTION;'
           ELSE
             P.state_desc + ' ' + P.permission_name + ' TO [' + L.Name + '];'  
           END AS 'SQL'
FROM sys.server_permissions AS P
  JOIN sys.server_principals AS L
    ON P.grantee_principal_id = L.principal_id
WHERE   P.class = 100
  AND P.type <> 'COSQ'
UNION ALL
SELECT CASE P.state WHEN 'W' THEN
         'GRANT ' + P.permission_name + ' ON LOGIN::[' + L2.name +
                 '] TO [' + L.Name + '] WITH GRANT OPTION;' COLLATE DATABASE_DEFAULT
           ELSE
             P.state_desc + ' ' + P.permission_name + ' ON LOGIN::[' + L2.name
                 + '] TO [' + L.Name + '];' COLLATE DATABASE_DEFAULT
           END AS 'SQL'
FROM sys.server_permissions AS P
  JOIN sys.server_principals AS L
    ON P.grantee_principal_id = L.principal_id
  JOIN sys.server_principals AS L2
    ON P.major_id = L2.principal_id
WHERE   P.class = 101
UNION ALL
SELECT CASE P.state WHEN 'W' THEN
         'GRANT ' + P.permission_name + ' ON ENDPOINT::[' + E.name +
                 '] TO [' + L.Name + '] WITH GRANT OPTION;' COLLATE DATABASE_DEFAULT
           ELSE
             P.state_desc + ' ' + P.permission_name + ' ON ENDPOINT::[' + E.name
                 + '] TO [' + L.Name + '];' COLLATE DATABASE_DEFAULT
           END AS 'SQL'
FROM sys.server_permissions AS P
  JOIN sys.server_principals AS L
    ON P.grantee_principal_id = L.principal_id
  JOIN sys.endpoints AS E
    ON P.major_id = E.endpoint_id
WHERE  P.class = 105;