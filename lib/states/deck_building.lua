local deckBuilding = {}

local Gamestate = require 'hump.gamestate'
local serpent = require 'serpent'

local playerData = require 'player_data'
local Warrior = require 'models/warrior'
local fonts = require 'fonts'

local SPRITE_SIZE = 128

function deckBuilding:init()
    playerData:init()
    local warriors = Warrior.readAll()
    print(serpent.block(warriors))

    self.warriors = warriors
    self.sprites = love.graphics.newImage('graphics/fighters-sprites.png')
    self.quads = {}
    for _, w in pairs(warriors) do
        local wquad = love.graphics.newQuad(
            w.sprite * SPRITE_SIZE, 0,
            SPRITE_SIZE, SPRITE_SIZE,
            self.sprites:getDimensions()
        )
        table.insert(self.quads, wquad)
    end
end

function deckBuilding:draw()
    for i, q in pairs(self.quads) do
        x = 50 + i * (SPRITE_SIZE + 10)
        love.graphics.draw(self.sprites, q, x, 50) 
        love.graphics.print(self.warriors[i].name, x, 190)
    end
end

return deckBuilding
