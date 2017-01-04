local tableItemsToBuy = {
  "item_quelling_blade",
  "item_ward_sentry",
  "item_recipe_soul_ring",

  "item_ring_of_regen",
  "item_sobi_mask"
};

pcall(require, "bots/basic_skill/item_purchase" )

----------------------------------------------------------------------------------------------------

function ItemPurchaseThink()
  ItemPurchaseGenericThink(tableItemsToBuy);
end

----------------------------------------------------------------------------------------------------

-- This file origin is from insanep --