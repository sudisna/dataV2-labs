#Challenge 1 - Who Have Published What At Where?

select a.au_id as "AUTHOR ID", au_lname as "LAST NAME", au_fname as "FIRST NAME", t.title as TITLE, p.pub_name as PUBLISHER
from authors a
inner join titleauthor ta on a.au_id=ta.au_id
inner join titles t on ta.title_id=t.title_id
inner join publishers p on t.pub_id=p.pub_id;

#Challenge 2 - Who Have Published How Many At Where?

select a.au_id as "AUTHOR ID", au_lname as "LAST NAME", au_fname as "FIRST NAME", p.pub_name as PUBLISHER, count(t.title_id) as "TITLE COUNT"
from authors a
inner join titleauthor ta on a.au_id=ta.au_id
inner join titles t on ta.title_id=t.title_id
inner join publishers p on t.pub_id=p.pub_id
group by p.pub_id, a.au_id DESC;

#Challenge 3 - Best Selling Authors

select a.au_id as "AUTHOR ID", au_lname as "LAST NAME", au_fname as "FIRST NAME", sum(s.qty) as TOTAL
from authors a
inner join titleauthor ta on ta.au_id = a.au_id
inner join titles t on t.title_id = ta.title_id
inner join sales s on s.title_id = t.title_id
group by a.au_id
order by TOTAL desc
limit 3;

#Challenge 4 - Best Selling Authors Ranking

select a.au_id as "AUTHOR ID", au_lname as "LAST NAME", au_fname as "FIRST NAME", COALESCE(sum(s.qty), 0) as TOTAL
from authors a
left join titleauthor ta on ta.au_id = a.au_id
left join titles t on t.title_id = ta.title_id
left join sales s on s.title_id = t.title_id
group by a.au_id
order by TOTAL desc;
