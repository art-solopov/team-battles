local mainMenu = {}

Gamestate = require 'hump.gamestate'
fonts = require 'fonts'

local WID_PADDING = 200
local HEIGHT = 60
local HEI_PADDING = 50
local Y_PADDING = 10

function mainMenu:init()
   self.menuItems = {
      { text="New game", name="new_game" },
      { text="Quit", name="exit" }
   }
   self.font = fonts.main
   self.innerPadding = 0.5 * (HEIGHT - self.font:getHeight())
end

function mainMenu:enter()
   self.selected = 1
end

function mainMenu:draw()
   local winWidth, winHeight = love.graphics.getDimensions()
   love.graphics.setFont(self.font)
   
   for i, item in ipairs(self.menuItems) do
      local y = HEI_PADDING + (i - 1) * (Y_PADDING + HEIGHT)
      local wid = winWidth - 2 * WID_PADDING
      
      if i == self.selected then
         love.graphics.setColor(0, 100, 100)
      else
         love.graphics.setColor(0, 0, 200)
      end
      love.graphics.rectangle('fill', WID_PADDING, y, wid, HEIGHT)
      love.graphics.setColor(255, 255, 255)
      love.graphics.printf(item.text, WID_PADDING, y + self.innerPadding,
                           wid, 'center')
   end
end

function mainMenu:keyreleased(key, code)
   if key == 'return' then
      menuItem = self.menuItems[self.selected]
      self["_item_" .. menuItem.name](self)
   elseif key == 'up' and self.selected > 1 then
      self.selected = self.selected - 1
   elseif key == 'down' and self.selected < #self.menuItems then
      self.selected = self.selected + 1
   end
end

function mainMenu:_item_new_game()
   -- TODO implement
end

function mainMenu:_item_exit()
   love.event.quit()
end



return mainMenu
