function Think()
    if ( GetTeam() == TEAM_RADIANT)
    then
        SelectHero(2, "npc_dota_hero_broodmother");
    elseif ( GetTeam() == TEAM_DIRE)
    then
        SelectHero(5, "npc_dota_hero_sven");
        SelectHero(6, "npc_dota_hero_viper");
        SelectHero(7, "npc_dota_hero_broodmother");
        SelectHero(8, "npc_dota_hero_warlock");
        SelectHero(9, "npc_dota_hero_vengefulspirit");
    end
end

function UpdateLaneAssignments()    

    if ( GetTeam() == TEAM_RADIANT )
    then
        --print( "Radiant lane assignments" );
        return {
        [1] = LANE_TOP,
        [2] = LANE_MID,
        [3] = LANE_BOT,
        [4] = LANE_TOP,
        [5] = LANE_BOT,
        };
    elseif ( GetTeam() == TEAM_DIRE )
    then
        --print( "Dire lane assignments" );
        return {
        [1] = LANE_TOP,
        [2] = LANE_MID,
        [3] = LANE_BOT,
        [4] = LANE_TOP,
        [5] = LANE_TOP,
        };
    end
end