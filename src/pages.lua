---@class Action_Chainsaw_Pages_module
local M <const> = {
  pages = {}
}

---@param file string
---@param load fun(req: table, res: table):any
function M:set(file, load)
  local page = {}
  page.file = file
  page.load = function(self, req, res)
    res:contentType("text/html")
    res:write(load(req, res))
  end

  self.pages[file] = page
end

return M
