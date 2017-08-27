local JSON = require 'JSON'
local Class = require 'hump.class'
local _utils = require 'models/_utils'

local Warrior = Class{}

function Warrior.readAll()
    local data = JSON:decode(love.filesystem.read("data/warriors.json"))
    local all = {}
    for i, datum in pairs(data) do
        local warrior = Warrior()
        _utils.assign(warrior, datum)
        table.insert(all, warrior)
    end
    return all
end


return Warrior
