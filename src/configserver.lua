


function ServerConfig(c)
  return {
    port = c.port or "8080",
    name = c.name or "action-chainsaw-service",
    location = c.location or "./public",
    host = c.host or "localhost",
    plugins = c.plugins or {},
    timeout = c.timeout or 0
  }
end
