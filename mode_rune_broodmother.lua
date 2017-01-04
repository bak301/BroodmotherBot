local broodmother = GetBot();
local ab_spin_web = broodmother:GetAbilityByName('broodmother_spin_web');
local isWebCoveredRune = false;
local radiant_safelane_bounty = GetRuneSpawnLocation(2);

function GetDesire()
    if (DotaTime() < 0)
    then
        return 1
    end
end

function OnStart()
    print("Start rune mode !")
    -- Level spin web first
    broodmother:Action_LevelAbility('broodmother_spin_web'); 
end

function Think()
    local web_spot = radiant_safelane_bounty - Vector(-500, -500);
    broodmother:Action_MoveToLocation(radiant_safelane_bounty);
    -- Put a web to prepare to steal rune
    if (not isWebCoveredRune)
    then
        broodmother:Action_UseAbilityOnLocation(ab_spin_web, web_spot);
        if (not ab_spin_web:IsCooldownReady())
        then
            isWebCoveredRune = true;
        end
    end
    broodmother:Action_PickUpRune(2);
    return
end

function OnEnd()
    print("End rune mode !")
    return
end