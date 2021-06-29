select Jogadores, count(Jogadores) as Assistências from 
(SELECT Assist_1 as Jogadores FROM kills
UNION all SELECT Assist_2 FROM kills
UNION all SELECT Assist_3 FROM kills
union all SELECT Assist_4 FROM kills)
as Jogadores
group by Jogadores
order by Assistências desc,
not null; -- Qual pessoa que mais deu assistência?