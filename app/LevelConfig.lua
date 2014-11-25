--[[一般在一个Lua文件内以module函数开始定义一个包。module同时定义了一
个新的包的函数环境，以使在此包中定义的全局变量都在这个环境中，而非
使用包的函数的环境中。理解这一点非常关键。 “module(..., package.seeall)”
的意思是定义一个包，包的名字与定义包的文件的名字相同，并且在包的函数
环境里可以访问使用包的函数环境。
使用方式
一般用require函数来导入一个包，要导入的包必须被置于包路径（package
path）上。包路径可以通过package.path或者环境变量来设定。一般来说，
当前工作路径总是在包路径中。
简单的说
a.lua
module (..., package.seeall)
flag=true
function example()
...
end

在别的脚本中
require "a"

调用脚本a中的任何全局变量或者函数必须加上a.
这个好处就是你不同的脚本中可以用相同的名称定义变量或者函数，而不会混乱。
--]]
--[[
	关卡配置表
]]

module("LevelConfig", package.seeall)


--矿物图片
local pic_path_tab = {
	"goods/gold_small.png",
	"goods/gold_middle.png",
	"goods/gold_large.png",
	"goods/stone_small.png",
	"goods/stone_middle.png",
	"goods/stone_large.png",
	"goods/secret_small.png",
	"goods/secret_middle.png",
	"goods/secret_large.png",
}
--矿物分布及类型
ITEM={}

ITEM[1]={} 
ITEM[1][1]={pic = pic_path_tab[1], pos = ccp(100, 100), weight = 10, price = 50}
ITEM[1][2]={pic = pic_path_tab[1], pos = ccp(200, 100), weight = 10, price = 50}
ITEM[1][3]={pic = pic_path_tab[1], pos = ccp(300, 100), weight = 10, price = 50}
ITEM[1][4]={pic = pic_path_tab[1], pos = ccp(400, 100), weight = 10, price = 50}
ITEM[1][5]={pic = pic_path_tab[1], pos = ccp(500, 100), weight = 10, price = 50}
ITEM[1][6]={pic = pic_path_tab[2], pos = ccp(100, 50), weight = 50, price = 200}
ITEM[1][7]={pic = pic_path_tab[2], pos = ccp(200, 50), weight = 50, price = 200}
ITEM[1][8]={pic = pic_path_tab[2], pos = ccp(300, 50), weight = 50, price = 200}
ITEM[1][9]={pic = pic_path_tab[2], pos = ccp(400, 50), weight = 50, price = 200}
ITEM[1][10]={pic = pic_path_tab[2], pos = ccp(500, 50), weight = 50, price = 200}


ITEM[2]={} 
ITEM[2][1]={pic = pic_path_tab[2], pos = ccp(100, 100), weight = 50, price = 200}
ITEM[2][2]={pic = pic_path_tab[2], pos = ccp(200, 100), weight = 50, price = 200}
ITEM[2][3]={pic = pic_path_tab[2], pos = ccp(300, 100), weight = 50, price = 200}
ITEM[2][4]={pic = pic_path_tab[2], pos = ccp(400, 100), weight = 50, price = 200}
ITEM[2][5]={pic = pic_path_tab[2], pos = ccp(500, 100), weight = 50, price = 200}
ITEM[2][6]={pic = pic_path_tab[3], pos = ccp(100, 50), weight = 100, price = 500}
ITEM[2][7]={pic = pic_path_tab[3], pos = ccp(200, 50), weight = 100, price = 500}
ITEM[2][8]={pic = pic_path_tab[3], pos = ccp(300, 50), weight = 100, price = 500}
ITEM[2][9]={pic = pic_path_tab[3], pos = ccp(400, 50), weight = 100, price = 500}
ITEM[2][10]={pic = pic_path_tab[3], pos = ccp(500, 50), weight = 100, price = 500}

ITEM[3]={} 
ITEM[3][1]={pic = pic_path_tab[1], pos = ccp(100, 100), weight = 10, price = 50}
ITEM[3][2]={pic = pic_path_tab[1], pos = ccp(200, 100), weight = 10, price = 50}
ITEM[3][3]={pic = pic_path_tab[1], pos = ccp(300, 100), weight = 10, price = 50}
ITEM[3][4]={pic = pic_path_tab[1], pos = ccp(400, 100), weight = 10, price = 50}
ITEM[3][5]={pic = pic_path_tab[1], pos = ccp(500, 100), weight = 10, price = 50}
ITEM[3][6]={pic = pic_path_tab[3], pos = ccp(100, 50), weight = 100, price = 500}
ITEM[3][7]={pic = pic_path_tab[3], pos = ccp(200, 50), weight = 100, price = 500}
ITEM[3][8]={pic = pic_path_tab[3], pos = ccp(300, 50), weight = 100, price = 500}
ITEM[3][9]={pic = pic_path_tab[3], pos = ccp(400, 50), weight = 100, price = 500}
ITEM[3][10]={pic = pic_path_tab[3], pos = ccp(500, 50), weight = 100, price = 500}


ITEM[4]={} 
ITEM[4][1]={pic = pic_path_tab[4], pos = ccp(100, 100), weight = 10, price = 10}
ITEM[4][2]={pic = pic_path_tab[4], pos = ccp(200, 100), weight = 10, price = 10}
ITEM[4][3]={pic = pic_path_tab[4], pos = ccp(300, 100), weight = 10, price = 10}
ITEM[4][4]={pic = pic_path_tab[4], pos = ccp(400, 100), weight = 10, price = 10}
ITEM[4][5]={pic = pic_path_tab[4], pos = ccp(500, 50), weight = 10, price = 10}
ITEM[4][6]={pic = pic_path_tab[3], pos = ccp(100, 50), weight = 100, price = 500}
ITEM[4][7]={pic = pic_path_tab[3], pos = ccp(200, 50), weight = 100, price = 500}
ITEM[4][8]={pic = pic_path_tab[3], pos = ccp(300, 50), weight = 100, price = 500}
ITEM[4][9]={pic = pic_path_tab[3], pos = ccp(400, 50), weight = 100, price = 500}
ITEM[4][10]={pic = pic_path_tab[3], pos = ccp(500, 50), weight = 100, price = 500}

function getItemData( config )
	local itemData = ITEM[tonumber(config)]
	if not itemData then
		itemData = ITEM[1]
	end
	return itemData
end

--关卡背景
BG_ITEM = {
	"gameBg/mineBG1.png",
	"gameBg/mineBG2.png",
	"gameBg/mineBG3.png",
	"gameBg/mineBG4.png",
	"gameBg/mineBG5.png",
	"gameBg/mineBG6.png"
}

function getBG_ITEM( config )
	local itemData = BG_ITEM[tonumber(config)]
	if not itemData then
		itemData = BG_ITEM[1]
	end
	return itemData
end

--通关条件
LIMIT_ITEM = {500, 1000, 1500, 2000, 3000, 5000}

function getLIMIT_ITEM( config )
	local itemData = LIMIT_ITEM[tonumber(config)]
	if not itemData then
		itemData = 10000000000000
	end
	return itemData
end