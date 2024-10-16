--select * from checkout_carts
--select * from checkout_actions


----------------------- checkout_steps --------------------------------------------------

-- this cte keeps all carts created
with total_carts_created as (
	select user_id, action_date 
	from checkout_carts
),
	
-- this cte stores all checkout attempts 
total_checkout_attempts as (
	select tc.user_id, a.action_date, a.action_name 
	from total_carts_created tc 
	left join checkout_actions a
	on tc.user_id = a.user_id
	where action_name like '%completepayment.click%'
		and a.action_date between '2022-07-01' and '2023-01-31'
		group by tc.user_id, a.action_date, a.action_name 
),
	
-- this cte keeps only the successful attempts.
total_successful_attempts as (
	select user_id, action_date, action_name 
	from total_checkout_attempts
	where action_name like '%success%'
	group by user_id, action_date, action_name 
),
-- this cte to count all the carts created daily
count_total_carts as (
	select action_date, count(*) as count_total_carts
	from total_carts_created
	group by action_date
),

--this cte to count all the checkout attempts daily
count_total_checkout_attempts as (
	select action_date, count(*) as count_total_checkout_attempts
	from total_checkout_attempts
	group by action_date
),

--this cte to count all the successful checkout attempts daily
count_successful_checkout_attempts  as (
	select action_date, count(*) as count_successful_checkout_attempts
	from total_successful_attempts
	group by action_date
	
)
select c.action_date, 
	c.count_total_carts,
	isnull(count_total_checkout_attempts, 0) as count_total_checkout_attempts,
	isnull(count_successful_checkout_attempts, 0) as count_successful_checkout_attempts
from count_total_carts c 
left join 
count_total_checkout_attempts a
	on a.action_date = c.action_date
left join
count_successful_checkout_attempts s
	on s.action_date = a.action_date
where c.action_date BETWEEN '2022-07-01' AND '2023-01-31'
ORDER BY c.action_date




----------- checkout errors -------------------------------------
select user_id, action_date, action_name, error_message, device 
from checkout_actions
where action_name like '%checkout%' 
	and action_date BETWEEN '2022-07-01' and '2023-01-31'
group by user_id, action_date, action_name, error_message, device 
order by action_date
