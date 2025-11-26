# SQL Assignment 1 - Question 2

### List All Active Physical Products

**Business Problem:**  
Merchandising teams often need a list of all physical products to manage logistics, warehousing, and shipping.

**Fields to Retrieve:**  
- `PRODUCT_ID`  
- `PRODUCT_TYPE_ID`  
- `INTERNAL_NAME`

```sql
SELECT 
  p.product_id,
  p.product_type_id,
  p.internal_name 
FROM product p 
JOIN product_type pt on p.product_type_id=pt.product_type_id 
where pt.is_physical='Y'
and p.sales_discontinuation_date is null;	
```
