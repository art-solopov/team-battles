local titleScreen = {}

Gamestate = require 'hump.gamestate'
fonts = require 'fonts'
mainMenu = require 'states/main_menu'

function titleScreen:draw()
   local winWidth, winHeight = love.graphics.getDimensions()
   love.graphics.setFont(fonts.gameTitle)
   love.graphics.printf("TEAM BATTLES", 0, 200,
                        winWidth, 'center')
   love.graphics.setFont(fonts.main)
   love.graphics.printf("Press Enter to continue", 0, 300,
                        winWidth, 'center')
end

function titleScreen:keyreleased(key, code)
   if key == 'return' then
      Gamestate.switch(mainMenu)
   end
end

return titleScreen
