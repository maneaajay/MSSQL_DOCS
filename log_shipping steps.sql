primary server (US REGION)



right click on your database ---> properties ---->
click on transaction log shipping ---> Enable this primary database--->
click on backup setting ---> add primary shared folder path on two times ----->
schedule job for tlog backup ----> click on OK ---> 

add secondary databases ---> click on add ---> new window will be popup ----> 
coonect secondary server---> check initialize secondary options (click on first option"Yes,generate a full backup")
click on copy files ---> paste secondary shared folder path ----> schedule job for copying files ---->
click on restore transaction log ---> select restoring model --->  schedule job for restoring backup jobs --->OK ----> ok


use AutoPartition
select * from orders

INSERT INTO orders (user_id, order_amt, address_id, status_id, is_active, order_date)
VALUES(76, 4163.95, 76, 1, 1, '2021-01-03 18:51:17.764'),
(76, 4163.95, 76, 1, 1, '2021-01-03 18:51:17.764'),
(76, 4163.95, 76, 1, 1, '2021-01-03 18:51:17.764')
