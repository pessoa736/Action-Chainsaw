local dslx = require("dslx")
local pega = require("pegasus")

function h1(el)
	return "<h1>" .. table.concat(el.childrens, " ") .. "</h1>"
end

local App = require("app-test.App")

local server = pega:new({
	port = 8080,
	location = "./public",
	host = "localhost",
})

pages:set("index.html", function()
	return App()
end)

server:start(function(req, res)
	local path = req:path()
	print(path)

	for page, v in pairs(pages) do
		if path == "/" .. page then
			v:load(req, res)
		end
	end
end)
