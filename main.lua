packageDirs = {
    "./lib/?.lua",
    "./vendor/lib/?.lua"
}

package.path = package.path .. ";" .. table.concat(packageDirs, ';')

fonts = require 'fonts'
titleScreen = require 'states/title_screen'

Gamestate = require 'hump.gamestate'

function love.load()
   fonts:loadAll()
   love.graphics.setFont(fonts.main)
   Gamestate.registerEvents()
   Gamestate.switch(titleScreen)
end

function love.update(dt)
end

function love.draw()
end
