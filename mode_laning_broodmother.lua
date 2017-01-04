local locations = require("bots/vector_list/Vectors")
local broodmother = GetBot();
local ab_spin_web = broodmother:GetAbilityByName('broodmother_spin_web');

function GetDesire()
    if (DotaTime() < 0)
    then
        return 0.5
    end

    if (DotaTime() < 900 and DotaTime() > 1)
    then
        return 0.9
    end
end

function OnStart()
    print('Switched to laning mode !!')
    
end

function Think()
    local lane_web_location_1 = Vector(6300, -4600, 256);
    broodmother:Action_UseAbilityOnLocation(ab_spin_web, lane_web_location_1);
    broodmother:Action_MoveToLocation(lane_web_location_1);
end
