local deckBuilding = {}

local Gamestate = require 'hump.gamestate'

local playerData = require 'player_data'

function deckBuilding:init()
    playerData:init()
end

return deckBuilding
