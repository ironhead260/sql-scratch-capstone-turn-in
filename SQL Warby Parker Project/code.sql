1. 	select *
	from survey
	limit 10;
 
2. 	select question,
	count(distinct user_id)
	from survey
	group by question;

3. 	Question 1: 500/500 = 100%
	Question 2: 475/500 = 95%
	Question 3: 380/475 = 80%
	Question 4: 361/380 = 95%
	Question 5: 270/361 = 75%

4.	select *
	from quiz
	limit 5;

	select * 
	from home_try_on
	limit 5;

	select *
	from purchase
	limit 5;

5. 	select distinct q.user_id,
	h.user_id is not null as 'is_home_try_on',
	h.number_of_pairs,
	p.user_id is not null as 'is_purchase'
	from quiz q
	left join home_try_on h
	on q.user_id = h.user_id
	left join purchase p
	on p.user_id = q.user_id
	limit 10;
