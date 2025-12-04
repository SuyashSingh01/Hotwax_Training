# SQL Assignment 3 - Question 2

### Completed Return Items

**Business Problem:**  
Customer service and finance often need insights into **returned items** to manage refunds, replacements, and inventory restocking.

**Fields to Retrieve:**  
- `RETURN_ID`  
- `ORDER_ID`  
- `PRODUCT_STORE_ID`  
- `STATUS_DATETIME`  
- `ORDER_NAME`  
- `FROM_PARTY_ID`
- `RETURN_DATE`  
- `ENTRY_DATE`  
- `RETURN_CHANNEL_ENUM_ID`

SELECT distinct oh.order_id,
	   ri.return_id,
       oh.product_store_id,
       oh.order_name,
       rh.from_party_id,
       rh.entry_date,
       rh.return_date,
       rh.return_channel_enum_id
FROM order_item oi
JOIN order_header oh ON oh.order_id=oi.order_id
JOIN return_item ri ON oi.order_id=ri.order_id and oi.ORDER_ITEM_SEQ_ID = ri.ORDER_ITEM_SEQ_ID
JOIN return_header rh ON rh.return_id=ri.RETURN_ID;

