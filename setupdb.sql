/* Cleanup the install */
DROP DATABASE test;

/* 
   Create a DB user with DB creation privileges.
   Password is exposed in version control, so this 
   barely more secure than just using 'root'.
*/
CREATE USER 'osllc_oc'@'%' IDENTIFIED BY 'osllc_oc';
GRANT ALL PRIVILEGES ON *.* TO 'osllc_oc'@'%';
FLUSH PRIVILEGES;