

with 
win_loss as (
	select 
		case
			when "Result" = 'Win' then 1
			else 0
		end as win,
		case
			when "Result" = 'Loss' then 1
			else 0
		end as loss,
		*
	from christopher_carter
)
select 
	sum("Boyd_Yards") as "Boyd Yards",
	sum("Higgins_Yards") as "Higgins Yards",
	sum("Chase_Yards") as "Chase Yards",
	concat(sum(win), '-', sum(loss)) as "Win/Loss"
from win_loss ;

