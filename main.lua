require 'game.lua'

state = game

function love.load()
	love.graphics.setMode(1024, 640)
	love.graphics.setBackgroundColor(255, 255, 255)
end

function love.update(dt)
	if state.update then state.update(dt) end
end

function love.draw()
	if state.draw then state.draw() end
end

function love.mousepressed( x, y, button )
	if state.mousepressed then state.mousepressed( x, y, button ) end
end

function love.keypressed( key, unicode )
	if state.keypressed then state.keypressed( key, unicode ) end
end
