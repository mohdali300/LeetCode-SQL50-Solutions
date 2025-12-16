with newTable as(
    select format(trans_date,'yyyy-MM') as month, country, amount,
    case state
        when 'approved' then 1 else 0 end as approved_count,
    case state
        when 'approved' then amount else 0 end as approved_total_amount
    from Transactions
)
select month, country, count(approved_count) as trans_count,
    sum(approved_count) as approved_count,
    sum(amount) as trans_total_amount,
    sum(approved_total_amount) as approved_total_amount
from newTable
group by month, country