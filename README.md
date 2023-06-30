init.lua is the main file where we call all plugins at neovim startup.

lua directory contains individual plugin files and a file called plugins.lua.

plugins.lua tells packer to import the plugins from git.




*Note*: Make sure not to keep the name of the plugin file same as plugin, it can cause integration issues at nvim startup. 

For example, name of mason plugin file can be mason-config.lua instead of mason.lua.

