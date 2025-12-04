# SQL Assignment 3 - Question 3

### Single-Return Orders (Last Month)

**Business Problem:**  
The mechandising team needs a list of orders that only have one return.

**Fields to Retrieve:**  
- `PARTY_ID`  
- `FIRST_NAME`

```sql
select distinct pr.party_id, pr.FIRST_NAME 
from return_header rh join person pr on rh.FROM_PARTY_ID = pr.PARTY_ID 
join return_item ri on ri.RETURN_ID=rh.RETURN_ID WHERE rh.FROM_PARTY_ID !="_NA_" and month(rh.return_date)=month(current_date)-1 group by rh.RETURN_ID having count(ri.order_id)=1;
```
