select Killer, count(Killer) as ContadorDeMortes from kills 
group by Killer 
order by ContadorDeMortes desc; -- Pessoa que mais matou no jogo


select Victim, count(Victim) as ContadorDeMortes from kills 
group by Victim 
order by ContadorDeMortes desc; -- Pessoa que mais morreu no jogo
