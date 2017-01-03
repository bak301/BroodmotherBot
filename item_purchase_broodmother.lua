function ItemPurchaseThink()
    local npcbot = GetBot();

    -- STARTING ITEMS
    local starting_items = {'item_quelling_blade', 'item_ward_sentry', 'item_recipe_soul_ring'};

    for i, item in ipairs(starting_items) do
        npcbot:Action_PurchaseItem(item)
    end
    
    return
end