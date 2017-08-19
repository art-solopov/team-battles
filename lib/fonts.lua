local fonts = {}

function fonts:load(name, subpath, size)
   size = size or 16
   self[name] = love.graphics.newFont('vendor/fonts/' .. subpath, size)
   return self[name]
end

function fonts:loadAll()
   self:load('main', 'fira-sans/FiraSans-Regular.otf', 20)
   self:load('gameTitle', 'fira-sans/FiraSans-ExtraBold.otf', 60)
end

return fonts
