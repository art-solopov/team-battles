local playerData = {}

function playerData:init()
    love.filesystem.createDirectory(love.filesystem.getSaveDirectory())
end

return playerData
