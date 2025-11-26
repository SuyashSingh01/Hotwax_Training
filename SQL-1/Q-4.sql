# SQL Assignment 1 - Question 4

### Product IDs Across Systems

**Business Problem:**  
To sync an order or product across multiple systems (e.g., Shopify, HotWax, ERP/NetSuite), the OMS needs to know each system's unique identifier for that product. This query retrieves the Shopify ID, HotWax ID, and ERP ID (NetSuite ID) for all products.

**Fields to Retrieve:**  
- `PRODUCT_ID` (internal OMS ID)  
- `SHOPIFY_ID`  
- `HOTWAX_ID`  
- `ERP_ID` or `NETSUITE_ID` (depending on naming)

```sql
SELECT
   p.product_id,
  gi.id_value as NetSuitId,
  sp.shopify_product_id as shopify_id
FROM product p left join good_identification gi on p.product_id=gi.product_id 
join shopify_product sp on sp.product_id=p.product_id
where gi.id_value is not null and gi.good_identification_type_id='ERP_ID';
```

