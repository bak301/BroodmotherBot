function Think()
    if ( GetTeam() == TEAM_DIRE)
    then
    SelectHero(9, "npc_dota_hero_broodmother");

    elseif ( GetTeam() == TEAM_RADIANT)
    then
    SelectHero(4, "npc_dota_hero_broodmother");
    end
end