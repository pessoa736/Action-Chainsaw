


local html = {}
local tags = {"h1"}

for _, tag in ipairs(tags) do
  html[tag] = function(element)
    local props = ""
    for var, val in pairs(element.props)do
      props = props .. ('%s="%s" '):format(
        var, val
      )
    end
    return ("<%s %s> %s </%s>")
      :format(
        tag,
        props,
        element.childrens:concat(" "),
        tag
    )
  end
end



return html