-- SQL PROJECT
use LoadDataDemo;
show tables;
select * from olympics limit5;
-- 1. Show how many medal counts present for entire data
select count(medal) from olympics;

-- 2. Show count of unique sports present in Olympics
select count(sport)from olympics;
select sport,count(sport)as count from olympics group by sport order by count desc;

-- 3. Show how many different medals won by team India
select count(distinct medal) from olympics where team='India';
select medal,count(medal)as count from olympics where team='India'group by medal order by count desc;

-- 4. Show event wise medals won by India show from highest to lowest medals won in order
select medal,max(event)as maxeve from olympics where team='India' group by medal order by maxeve;


-- 5. Show event wise medals won by India in order of year
select medal,max(year)as yearm from olympics where team='India' group by medal order by yearm;
select medal,event from olympics where team='India'order by year;

-- 6. show country who won maximum medals.
select team, max(medal)as maxmedal from olympics group by team;

-- 7.show top 10 countries whowon gold
select team,max(medal)as maxmedal from olympics where medal='gold' group by team limit 10;


--  8. show in which year did United states won most gold medal

select year,max(medal) as maxmedal from olympics where team='United states' and medal='gold'group by year;

-- 9. In which sports United States has most medals.
select sport,max(medal) as maxmedal from olympics where team='United states' group by sport;


-- 10. Find top three players who won most medals along with their sports and country
select name,sport,team,max(medal) as maxmedal from olympics where not medal='Nomedal' group by team,name,sport order by maxmedal desc limit 3;


-- 11. Find player with most gold medals in cycling along with his country.
select name,team,max(medal)as maxmedal from olympics where sport='cycling' and medal='gold' group by name,team;


-- 12.Find player with most medals (Gold+Silver+Bronze) in Basketball also show his country.
select name,team,max(medal)as maxmedal from olympics where sport='Basketball' and not medal='Nomedal' group by name,team;

-- 13. Find out the count of different medals of the top basketball player Teresa Edwards
select medal,count(medal) as count from olympics where name='Teresa Edwards'group by medal;

-- 14. Find out medals won by male,female each year , Export this data and plot graph in excel
select sex,medal,year from olympics where not medal='Nomedal' group by sex,medal,year order by year;

