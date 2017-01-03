function ItemPurchaseThink()
    local npcbot = GetBot();

    -- STARTING ITEMS
    if (DotaTime() < 0)
    then
        local starting_items = {'item_quelling_blade', 'item_ward_sentry', 'item_recipe_soul_ring'};
        for i, item in ipairs(starting_items) do
            npcbot:Action_PurchaseItem(item)
        end
    end

    -- EARLY GAME ITEMS
    return
end