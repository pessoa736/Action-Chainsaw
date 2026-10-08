


local html = {}

html.h1 =function(element) 
  local props = ""
  for var, val in pairs(element.props)do
    props = props .. ('%s="%s" '):format(
      var, val
    )
  end
  return ("<h1 %s> %s <h1>")
    :format(
      props,
      element.childrens:concat(" ")
  )
end
