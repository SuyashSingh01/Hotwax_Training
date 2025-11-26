# SQL Assignment 1 - Question 12

### Product Threshold Value

**Business Problem**
The retailer has set a threshild value for products that are sold online, in order to avoid over selling. 

**Fields to Retrieve:**
- `PRODUCT ID`
- `THRESHOLD`

```sql
select 
  p.product_id,
  pf.minimum_stock as Threshold
from product p 
join product_facility pf on p.product_id=pf.product_id 
join facility f ON f.facility_id=pf.facility_id
WHERE facility_type_id='CONFIGURATION'
order by pf.minimum_stock desc;
```
