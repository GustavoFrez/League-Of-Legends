select season, count(season) 
from matchinfo 
group by season; -- Quantos jogos tiveram  por temporada?

select Type, count(Type) as EstruturasDestruídas 
from structures 
group by Type 
order by EstruturasDestruídas desc; -- Quantidade de estruturas destruídas durante as partidas?