# SQL Assignment 1 - Question 3

### Products Missing NetSuite ID

**Business Problem:**  
A product cannot sync to NetSuite unless it has a valid NetSuite ID. The OMS needs a list of all products that still need to be created or updated in NetSuite.

**Fields to Retrieve:**  
- `PRODUCT_ID`  
- `INTERNAL_NAME`  
- `PRODUCT_TYPE_ID`  
- `NETSUITE_ID` (or similar field indicating the NetSuite ID; may be `NULL` or empty if missing)

```sql
SELECT
  p.product_id,product_type_id
  p.internal_name,
  p.product_type_id,
  gi.id_value as NetSuitId
FROM product p left join good_identification gi on p.product_id=gi.product_id 
where gi.id_value is null OR gi.id_value='' and gi.good_identification_type_id='ERP_ID';
```
