# SQL Assignment 1 - Question 5

### Completed Orders in August 2023

**Business Problem:**  
After running similar reports for a previous month, you now need all completed orders in August 2023 for analysis.

**Fields to Retrieve:**  
- `PRODUCT_ID`  
- `PRODUCT_TYPE_ID`  
- `PRODUCT_STORE_ID`  
- `TOTAL_QUANTITY`  
- `INTERNAL_NAME`  
- `FACILITY_ID`  
- `EXTERNAL_ID`  
- `FACILITY_TYPE_ID`  
- `ORDER_HISTORY_ID`  
- `ORDER_ID`  
- `ORDER_ITEM_SEQ_ID`  
- `SHIP_GROUP_SEQ_ID`

```sql
select 
  oi.product_id,
  p.product_type_id,
  oi.product_store_id,
  oi.quantity as total_quantity,
  p.internal_name,
  sg.facility_id,
  o.external_id,
  f.facility_type_id,
  oh.order_history_id,
  oi.order_id,
  oi.order_item_seq_id,
  sg.ship_group_seq_id
from order_item oi
join product p on oi.product_id = p.product_id
join ship_group sg on oi.order_id = sg.order_id and oi.ship_group_seq_id = sg.ship_group_seq_id
join facility f on sg.facility_id = f.facility_id
join order_header oh on oi.order_id = oh.order_id   

```
