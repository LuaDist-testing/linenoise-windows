-- This file was automatically generated for the LuaDist project.

package = "linenoise-windows"
version = "0.5-2"
-- LuaDist source
source = {
  tag = "0.5-2",
  url = "git://github.com/LuaDist-testing/linenoise-windows.git"
}
-- Original source
-- source = {
-- 	url = "https://github.com/Choonster/lua-linenoise-windows/archive/0.05-2.tar.gz",
-- 	dir = "lua-linenoise-windows-0.05-2",
-- }
description = {
	summary	= "A binding for the linenoise command line library",
	homepage = "https://github.com/Choonster/lua-linenoise-windows",
	license	= "MIT/X11",
}
dependencies = {
	"lua >= 5.1"
}

build = {
	platforms = {
		win32 = {
			type = "builtin",
			modules = {
				linenoise = {
					sources	 = { "lua-linenoise.c", "linenoise-windows/linenoise.c", "linenoise-windows/win32fixes.c" },
					libraries = { "ws2_32" },
				},
			},
		},
		unix = {
			type = "builtin",
			modules = {
				linenoise = {
					sources = { "lua-linenoise.c", "linenoiselib.c" },
				}
			}
		}
	}
}