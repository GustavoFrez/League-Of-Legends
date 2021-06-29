select Campeões, count(Campeões) as VezesEscolhidos from 
(SELECT blueTopChamp as Campeões FROM matchinfo
UNION all SELECT blueJungleChamp FROM matchinfo
UNION all SELECT blueMiddleChamp FROM matchinfo
union all SELECT blueADCChamp FROM matchinfo
union all SELECT blueSupportChamp FROM matchinfo
union all SELECT redTopChamp FROM matchinfo
UNION all SELECT redJungleChamp FROM matchinfo
UNION all SELECT redMiddleChamp FROM matchinfo
union all SELECT redADCChamp FROM matchinfo
union all SELECT redSupportChamp FROM matchinfo)
as Campeões
group by Campeões
order by VezesEscolhidos desc,
not null;  -- Quais campeões foram mais escolhidos?

select Bans, count(Bans) as NúmeroDeBans from 
(SELECT ban_1 as Bans FROM bans
UNION all SELECT ban_2 FROM bans
UNION all SELECT ban_3 FROM bans
union all SELECT ban_4 FROM bans
union all SELECT ban_5 FROM bans)
as Bans
group by Bans
order by NúmeroDeBans desc,
not null; -- Quais campeões foram mais banidos ?