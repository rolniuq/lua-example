-- Game Configuration
local snake = {
	body = { { x = 10, y = 10 } }, -- Initial position of the snake
	dir = { x = 1, y = 0 }, -- Movement direction
	grow = false, -- Snake growth flag
}
local food = { x = 15, y = 15 } -- Initial position of the food
local gridSize = 20 -- Size of each grid cell
local gridWidth, gridHeight -- Grid dimensions
local gameOver = false -- Game over flag
local moveDelay = 0.15 -- Delay between moves
local timeSinceLastMove = 0 -- Time counter for movement

-- Initialize Game
function love.load()
	gridWidth = love.graphics.getWidth() / gridSize
	gridHeight = love.graphics.getHeight() / gridSize
end

-- Draw Game
function love.draw()
	if gameOver then
		love.graphics.printf(
			"Game Over! Press R to Restart",
			0,
			love.graphics.getHeight() / 2,
			love.graphics.getWidth(),
			"center"
		)
		return
	end

	-- Draw Snake
	love.graphics.setColor(0, 1, 0)
	for _, segment in ipairs(snake.body) do
		love.graphics.rectangle("fill", (segment.x - 1) * gridSize, (segment.y - 1) * gridSize, gridSize, gridSize)
	end

	-- Draw Food
	love.graphics.setColor(1, 0, 0)
	love.graphics.rectangle("fill", (food.x - 1) * gridSize, (food.y - 1) * gridSize, gridSize, gridSize)
end

-- Update Game State
function love.update(dt)
	if gameOver then
		return
	end

	timeSinceLastMove = timeSinceLastMove + dt
	if timeSinceLastMove >= moveDelay then
		timeSinceLastMove = 0
		moveSnake()
	end
end

-- Handle Key Presses
function love.keypressed(key)
	if key == "up" and snake.dir.y == 0 then
		snake.dir = { x = 0, y = -1 }
	elseif key == "down" and snake.dir.y == 0 then
		snake.dir = { x = 0, y = 1 }
	elseif key == "left" and snake.dir.x == 0 then
		snake.dir = { x = -1, y = 0 }
	elseif key == "right" and snake.dir.x == 0 then
		snake.dir = { x = 1, y = 0 }
	elseif key == "r" then
		resetGame()
	end
end

-- Move the Snake
function moveSnake()
	local head = snake.body[1]
	local newHead = { x = head.x + snake.dir.x, y = head.y + snake.dir.y }

	-- Check for collisions with the wall
	if newHead.x < 1 or newHead.x > gridWidth or newHead.y < 1 or newHead.y > gridHeight then
		gameOver = true
		return
	end

	-- Check for collisions with itself
	for _, segment in ipairs(snake.body) do
		if segment.x == newHead.x and segment.y == newHead.y then
			gameOver = true
			return
		end
	end

	-- Add new head to the snake
	table.insert(snake.body, 1, newHead)

	-- Check if the snake eats the food
	if newHead.x == food.x and newHead.y == food.y then
		snake.grow = true
		placeFood()
	end

	-- Remove the tail if not growing
	if not snake.grow then
		table.remove(snake.body)
	else
		snake.grow = false
	end
end

-- Place Food in a Random Location
function placeFood()
	food.x = love.math.random(1, gridWidth)
	food.y = love.math.random(1, gridHeight)
end

-- Reset Game
function resetGame()
	snake.body = { { x = 10, y = 10 } }
	snake.dir = { x = 1, y = 0 }
	snake.grow = false
	food = { x = 15, y = 15 }
	gameOver = false
	timeSinceLastMove = 0
end
