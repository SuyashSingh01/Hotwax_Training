# SQL Assignment 1 - Question 11

### Canceled Orders (Last Month)

**Business Problem:**  
The merchandising team needs to know how many orders were canceled in the previous month and their reasons.

**Fields to Retrieve:**  
- `TOTAL ORDERS`  
- `CANCELATION REASON`

```sql
select 
	change_reason,
    	count(order_id) as total 
from order_status 
	where status_id='ORDER_CANCELLED' AND status_datetime >= DATE_FORMAT(CURDATE() - INTERVAL 1 MONTH, '%Y-%m-%d')
AND status_datetime < DATE_FORMAT(CURDATE(), '%Y-%m-%d')
group by CHANGE_REASON;
```
