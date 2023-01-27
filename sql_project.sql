use sql_project;

#TABLES:::

#1.customer table:
select * from customer;
#2.employee_details:
select * from employee_details;
#3.employee_manages_shipment
select * from employee_manages_shipment;
#4.membership:
select * from membership;
#5.payment_details:
select * from payment_details;
#6.shipment_details:
select * from shipment_details;
#7.status
select * from status;

#RELATIONSHIP::

#CUSTOMER has many to one relationship with MEMBERSHIP
#m_id is primary key in MEMBERSHIP and foriegn key in CUSTOMER table
select a.*,b.*
from customer a left outer join membership b 
on a.m_id = b.m_id;

#EMPLOYEE_MANAGES_SHIPMENT has many to one relationship with EMPLOYEE_DETAILS
#employee_e_id is foriegn key in EMPLOYEE_MANAGES_SHIPMENT and e_id is primary key in EMPLOYEE_DETAIL table
select a.*,b.*
from employee_manages_shipment a left outer join employee_details b 
on a.employee_e_id = b.e_id;

#EMPLOYEE_MANAGES_SHIPMENT has many to one relationship with STATUS
#sh_id is primary key in STATUS and status_sh_id foriegn key in EMPLOYEE_MANAGES_SHIPMENT table
select a.*,b.*
from employee_manages_shipment a left outer join status b 
on a.status_sh_id=b.sh_id;

#EMPLOYEE_MANAGES_SHIPMENT has many to one relationship with SHIPMENT_DETAIL
#sh_id is primary key in SHIPMENT_DETAILS and shipment_sh_id foriegn key in EMPLOYEE_MANAGES_SHIPMENT table
select a.*,b.*
from employee_manages_shipment a left outer join shipment_details b 
on a.shipment_sh_id=b.sh_id;

#PAYMENT_DETAIL has many to one relationship with SHIPMENT_DETAIL 
#sh_id is primary key in SHIPMENT_DETAILS and foriegn key in PAYMENT_DETAIL table
select a.*,b.*
from payment_details a left outer join shipment_details b 
on a.sh_id=b.sh_id;

#SHIPMENT_DETAIL has many to one relationship with CUSTOMER
#c_id is primary key in CUSTOMER and foriegn key in SHIPMENT_DETAIL table
select a.*,b.*
from customer a left outer join shipment_details b
on a.c_id=b.c_id;

#PAYMENT_DETAIL has many to one relationship with CUSTOMER
#c_id is primary key in CUSTOMER and foriegn key in PAYMENT_DETAIL table
select a.*,b.*
from customer a left outer join shipment_details b
on a.c_id=b.c_id;



customeremployee_details