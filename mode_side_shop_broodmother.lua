function GetDesire()
  local npcBot = GetBot();
  local desire = BOT_MODE_DESIRE_NONE;
  if ( npcBot.sideShopMode == true ) then
    desire = BOT_MODE_DESIRE_ABSOLUTE;
  end

  return Clamp( desire, BOT_MODE_DESIRE_NONE, BOT_MODE_DESIRE_ABSOLUTE );
end

-- this file origin is from insanep --