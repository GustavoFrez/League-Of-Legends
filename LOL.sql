select Type, count(Type) as MortesDeDragões from monsters 
where Type in('EARTH_DRAGON', 'FIRE_DRAGON', 'WATER_DRAGON', 'AIR_DRAGON', 'ELDER_DRAGON', 'DRAGON') 
group by Type
order by MortesDeDragões desc; -- Quantos dragões foram feitos?

select Type, count(Type) as MortesDeMonstros from monsters 
group by Type
order by MortesDeMonstros desc; -- Quais monstros épicos mais foram feitos?