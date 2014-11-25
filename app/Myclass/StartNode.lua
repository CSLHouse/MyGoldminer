local StartNode = class("StartNode", function()
	return display.newNode()
	end)

function StartNode:ctor( )
	--背景
	local bg = display.newSprite("MainMenu.png")
	bg:setAnchorPoint(ccp(0, 0))
	bg:setScaleX(display.width/bg:getContentSize().width)
	bg:setScaleY(display.height/bg:getContentSize().height)
	bg:setPosition(ccp(0, 0))
	self:addChild(bg, 0)

	--开始按钮
	local GameScene = require("app/scenes/GameScene")
	
	local startBtn = cc.ui.UIPushButton.new({
		normal = "button/PlayMenu.png"}, {scale9 = true})

	startBtn:setScale(1.3)
	startBtn:setPosition(ccp(display.cx - 150, display.cy + 90))
	
	self:addChild(startBtn, 1)


	startBtn:onButtonClicked(function(event)
		--GameScene = require("app/scenes/GameScene")
		local gameScene = GameScene.new()
		
		CCDirector:sharedDirector():replaceScene(gameScene)
		--display.replaceScene(gameScene)
	end)
	--音乐开关按钮
	
	audio.playMusic("backMusic.mp3", true)--播放音乐
	local music_btn = cc.ui.UICheckBoxButton.new({ on = "button/soundController.png", off = "button/soundController2.png"})
    music_btn:setPosition(ccp(50,50))
    music_btn:onButtonStateChanged(function(event)
        if event.state == "on" then
           audio.resumeMusic()--继续播放音乐
        elseif event.state == "off" then
            audio.pauseMusic()--暂停音乐
        end
    end)
    music_btn:setButtonSelected(true)
    self:addChild(music_btn, 0)
end
return StartNode