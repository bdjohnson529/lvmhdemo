select plan, count(plan)
from sample_transactions
group by plan
order by count(plan) asc