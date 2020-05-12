-- Step 1
SELECT 
    a.au_id AS 'AUTHOR ID',
    au_lname AS 'Last Name',
    au_fname AS 'First Name',
    t.title_id AS 'TITLE ID',
    (t.advance * ta.royaltyper / 100) AS 'ADVANCE',
    (t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100) AS 'Royalty'
FROM
    authors a
        INNER JOIN
    titleauthor ta ON ta.au_id = a.au_id
        INNER JOIN
    titles t ON t.title_id = ta.title_id
        INNER JOIN
    sales s ON s.title_id = t.title_id
-- order by
order by t.title_id, a.au_id;
-- Step 2
SELECT 
    au_id AS 'AUTHOR ID',
    au_lname AS 'Last Name',
    au_fname AS 'First Name',
    title_id AS 'TITLE ID',
	SUM(Royalty) AS 'Royalties' from
(SELECT a.au_id, au_lname, au_fname, t.title_id, (t.advance * ta.royaltyper / 100) AS 'ADVANCE', (t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100) AS 'Royalty'
FROM authors a
        INNER JOIN
    titleauthor ta ON ta.au_id = a.au_id
        INNER JOIN
    titles t ON t.title_id = ta.title_id
        INNER JOIN
    sales s ON s.title_id = t.title_id
    ) AS Temp
GROUP BY au_id , title_id
ORDER BY ROYALTIES DESC;

-- Step 3
select au_id as "AUTHOR ID", au_lname as "LAST NAME", au_fname as "FIRST NAME", sum(ADVANCE + ROYALTIES) as PROFITS from 
-- incorporate previous table
(SELECT 
    au_id, au_lname, au_fname, title_id, ADVANCE, SUM(Royalty) AS 'Royalties' from
(SELECT a.au_id, au_lname, au_fname, t.title_id, (t.advance * ta.royaltyper / 100) AS 'ADVANCE', (t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100) AS 'Royalty'
FROM authors a
        INNER JOIN
    titleauthor ta ON ta.au_id = a.au_id
        INNER JOIN
    titles t ON t.title_id = ta.title_id
        INNER JOIN
    sales s ON s.title_id = t.title_id
    ) AS Temp
GROUP BY au_id , title_id

) as Temp1
-- group by author ID
group by au_id
order by PROFITS desc
limit 3;

-- Challenge 2
drop temporary table if exists temp;
CREATE TEMPORARY TABLE temp
SELECT a.au_id, au_lname, au_fname, t.title_id, (t.advance * ta.royaltyper / 100) AS 'Advance', (t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100) AS 'Royalty'
FROM authors a
        INNER JOIN
    titleauthor ta ON ta.au_id = a.au_id
        INNER JOIN
    titles t ON t.title_id = ta.title_id
        INNER JOIN
    sales s ON s.title_id = t.title_id
order by t.title_id, a.au_id;

drop temporary table if exists temp1;

CREATE TEMPORARY TABLE temp1
select title_id, au_id, sum(Royalty) as ROYALTIES
from temp
group by title_id, au_id;

select temp1.au_id as "AUTHOR ID", a.au_lname as "LAST NAME", a.au_fname as "FIRST NAME", sum(Advance + ROYALTIES) as PROFITS 
from temp1
inner join titles t on t.title_id = temp1.title_id
inner join authors a on a.au_id = temp1.au_id
group by temp1.au_id
order by PROFITS desc
limit 3;
