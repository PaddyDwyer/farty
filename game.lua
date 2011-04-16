game = {
	x = 200, y = 200
}

local g  = love.graphics

function game.update(dt)
	if love.keyboard.isDown('up') then
		moveVector = {x = 0, y = -1}
	elseif love.keyboard.isDown('down') then
		moveVector = {x = 0, y = 1}
	elseif love.keyboard.isDown('left') then
		moveVector = {x = -1, y = 0}
	elseif love.keyboard.isDown('right') then
		moveVector = {x = 1, y = 0 }
	end

	if moveVector then
		game.x = game.x + moveVector['x']
		game.y = game.y + moveVector['y']
	end
end

function game.draw()
	g.setColor(0, 0, 0)
	g.circle('fill', game.x, game.y, 16, 50)
end
