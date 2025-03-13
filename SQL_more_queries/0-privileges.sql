-- SQL

SELECT
    GRANTEE,
    TABLE_CATALOG,
    PRIVILEGE_TYPE
FROM
    information_schema.USER_PRIVILEGES
WHERE
    GRANTEE IN ('user_0d_1'@'localhost', 'user_0d_2'@'localhost')
ORDER BY GRANTEE, PRIVILEGE_TYPE;
