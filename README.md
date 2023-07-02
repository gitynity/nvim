- packer plugin manager is used to install the plugins.

- init.lua is the main file where we call all plugins at neovim startup.

- lua directory contains individual plugin files and a common import file for all plugins called plugins.lua.

<br />

---
# Installation

-  cd ~/.config   <!-- cd into your config directory -->
-  git clone https://github.com/gitynity/nvim.git <!-- clone this repo -->
-  mkdir -p ~/.config/nvim/pack/packer/start <!-- Make directory structure like this to setup packer plugin mananger -->
-  cd ~/.config/nvim/pack/packer/start <!-- cd to this location to install clone packer  -->
-  git clone https://github.com/wbthomason/packer.nvim <!-- clone packer repo -->
-  open nvim and run :PackerSync <!-- This will install all plugins with configurations -->

---
<br />

# Directory structure of .config/nvim:

<img width="739" alt="Screenshot 2023-07-03 at 2 46 04 AM" src="https://github.com/gitynity/nvim/assets/23361845/a47cb3db-8ab1-41fa-8d34-68d6cc52c32c">


##### Note: Make sure not to keep the name of the plugin file same as the name of plugin, it can cause integration issues at nvim startup. 

##### For example, name of mason plugin file can be mason-config.lua instead of mason.lua. <br /> <br />  <br /> 

# UI look:

<img width="1427" alt="Screenshot 2023-07-03 at 2 43 46 AM" src="https://github.com/gitynity/nvim/assets/23361845/1f8d629b-3cb7-4e67-bb1a-ef9ec42ba1aa">




<bre />

### References

- Percy Bolmé. [Learn How To Use NeoVim As an IDE](https://programmingpercy.tech/blog/learn-how-to-use-neovim-as-ide/) @ProgrammingPercy.
