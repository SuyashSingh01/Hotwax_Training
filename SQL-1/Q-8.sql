# SQL Assignment 1 - Question 8

### Orders Completed Hourly

**Business Problem:**  
Operations teams may want to see how orders complete across the day to schedule staffing.

**Fields to Retrieve:**  
- `TOTAL ORDERS`  
- `HOUR`

```sql
select 
    HOUR(oh.order_date)+1 as Hours,
    count(oh.order_id) as total_order
from order_header oh 
where oh.status_id='ORDER_COMPLETED'
group by Hours
order by Hours;
```
