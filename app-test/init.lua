
local dslx = require "dslx"
local pega = require "pegasus"

local server = pega:new{
  port = 8080,
  location="./public",
  host="localhost"
}

server:start(function(req, res)
  local path = req:path()
  print(path)

  if path == "/index.html" then
    res:addHeader("Content-Type", "text/html")
    res:write("<h1>hello world!</h1>")
    return true
  end

  return false
end)
