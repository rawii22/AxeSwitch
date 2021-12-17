name = "Auto Axe/Shovel Switch"
description = "Automatically switches to shovel after cutting down a tree and then back to axe after digging up a stump.\nIMPORTANT: You can press \"z\" (by default) to toggle the auto switch. You can check if the auto switch is on through the console. When the switch is toggled, a message will appear in the console."
author = "rawii22 & lord_of_les_ralph"
version = "1.0.2"
icon = "modicon.tex"
icon_atlas = "modicon.xml"

forumthread = ""

api_version = 10

priority = - 1
dst_compatible = true
all_clients_require_mod = false
client_only_mod = false

configuration_options = {
  {
    name = "KEY",
    label = "Toggle Shortcut",
    default = "Z",
    options = {
		{description = "A", data = "A"},
		{description = "B", data = "B"},
		{description = "C", data = "C"},
		{description = "D", data = "D"},
		{description = "E", data = "E"},
		{description = "F", data = "F"},
		{description = "G", data = "G"},
		{description = "H", data = "H"},
		{description = "I", data = "I"},
		{description = "J", data = "J"},
		{description = "K", data = "K"},
		{description = "L", data = "L"},
		{description = "M", data = "M"},
		{description = "N", data = "N"},
		{description = "O", data = "O"},
		{description = "P", data = "P"},
		{description = "Q", data = "Q"},
		{description = "R", data = "R"},
		{description = "S", data = "S"},
		{description = "T", data = "T"},
		{description = "U", data = "U"},
		{description = "V", data = "V"},
		{description = "W", data = "W"},
		{description = "X", data = "X"},
		{description = "Y", data = "Y"},
		{description = "Z", data = "Z"},
		{description = "[", data = "["},
		{description = "]", data = "]"},
		{description = "\\", data ="\\"},
		{description = ";", data = ";"},
		{description = "\'", data ="\'"},
		{description = "/", data = "/"},
		{description = "-", data = "-"},
		{description = "=", data = "="}
	}
  },

}