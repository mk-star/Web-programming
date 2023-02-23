-----------------------------------------------------------------------------------------
--
-- view2.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
local scene = composer.newScene()

function scene:create( event )
	local sceneGroup = self.view
	
	---1차시------------------------------------------------
	local background = display.newImageRect("image/background.png", display.contentWidth, display.contentHeight)
	background.x, background.y = display.contentWidth/2, display.contentHeight/2
	--배경이미지:newImageRect()
	
	local physics = require("physics")
	physics.start()
	physics.setDrawMode("hybrid")

	--땅 객체 생성(나뭇잎)--
	local tree = display.newImageRect("image/carrot.png", 200, 500)
	tree.x, tree.y = display.contentCenterX, 500

	local ground = {}
	ground[1] = display.newRect( 470, 600, 200, 100)
	ground[1]:setFillColor( 0, 1, 0 )
	ground[2] = display.newRect( 780, 500, 150, 30 )
	ground[2]:setFillColor( 0, 1, 0 )

	local wall = {}
	wall[1] = display.newRect(0, background.y, 100, background.height)
	wall[2] = display.newRect(background.width, background.y, 100, background.height)
	wall[3] = display.newRect(background.x, 0, background.width, 100)
	wall[4] = display.newRect(background.x, background.height, background.width, 100)

	sceneGroup:insert(background)

	for i = 1, #ground do 
		physics.addBody(ground[i], "static")
		sceneGroup:insert(ground[i])
	end

	for i = 1, #wall do
		physics.addBody(wall[i], "static")
		sceneGroup:insert(wall[i])
		wall[i].name = "wall"
	end
	---버튼---
	local arrow = {}
	arrow[1] = display.newImageRect("image/leaf1.png", 100, 100)
	arrow[1].x, arrow[1].y = 900, 625
	arrow[1].name = "left"
	arrow[2] = display.newImageRect("image/leaf2.png", 100, 100)
	arrow[2].x, arrow[2].y = arrow[1].x+100, 625
	arrow[2].name = "right"
	arrow[3] = "left"

	-- Create player
	local player = display.newImageRect("image/carrot.png", 150, 120 )
	local player_outline = graphics.newOutline(1, "image/carrot.png")
	player.x, player.y = ground[1].x, ground[1].y -500
	player.name="player"

	physics.addBody( player, "dynamic", {friction=1, outline=player_outline})
	player.isFixedRotation = true 
	sceneGroup:insert(player)
	player:toFront()

	function arrowTab( event )
		x = player.x
		y = player.y
		if (event.target.name == "left") then
			if (event.target.name == arrow[3]) then
				transition.to(player, {time=10, x=(x-200)})--게임오버
		    else
		    	transition.to(player, {time=10, x=(x-300), y=(y-100)})
		    	arrow[3] = "left"
		    end
		else --오른쪽 버튼 클릭
		   	if (event.target.name == arrow[3]) then
				transition.to(player, {time=10, x=(x+200)})
		    else
		    	transition.to(player, {time=10, x=(x+300), y=(y-100)})
		    	arrow[3] = "right"
		    end
		end
		physics.addBody(player,{friction=1, outline=player_outline})
		player.isFixedRotation = true 
	end

	for i = 1, 2 do
		arrow[i]:addEventListener("tap", arrowTab)
		sceneGroup:insert(arrow[i])
	end

	-----게임 종료---




--	for i = 1,119 do
--		if(i % 30 == 0) then
--			m = m + 0.08
--			num = 1
--		end
		--cup[i] = display.newImageRect(leafGroup, "image/leaf" .. math.random(1,3) .. ".png", 150, 150)
		--cup[i].x, leaf[i].y = display.contentWidth*0.15 + 30*num, display.contentHeight * (0.8 - m)
		--num = num + 1
--	end
	--local score = display.newText(0, display.contentWidth*0.1, display.contentWidth*0.15)
	--score.size = 100 --글씨 사이즈--
	--score:setFillColor(0)
	--score.alpha = 0.5

	----레이어정리----




end

function scene:show( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if phase == "will" then
		-- Called when the scene is still off screen and is about to move on screen
	elseif phase == "did" then
		-- Called when the scene is now on screen
		-- 
		-- INSERT code here to make the scene come alive
		-- e.g. start timers, begin animation, play audio, etc.
	end	
end

function scene:hide( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if event.phase == "will" then
		-- Called when the scene is on screen and is about to move off screen
		--
		-- INSERT code here to pause the scene
		-- e.g. stop timers, stop animation, unload sounds, etc.)
	elseif phase == "did" then
		-- Called when the scene is now off screen
	end
end

function scene:destroy( event )
	local sceneGroup = self.view
	
	-- Called prior to the removal of scene's "view" (sceneGroup)
	-- 
	-- INSERT code here to cleanup the scene
	-- e.g. remove display objects, remove touch listeners, save state, etc.
end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-----------------------------------------------------------------------------------------

return scene
