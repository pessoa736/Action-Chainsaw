rockspec_format = "1.1"
package = "Action-Chainsaw"
version = "dev-1"
source = {
   url = "*** please add URL for source tarball, zip or repository here ***"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}

dependencies = {
   "lua >= 5.5",
   "daviluaxml",
   "pegasus"
}


build = {
   type = "builtin",
   modules = {}
}
