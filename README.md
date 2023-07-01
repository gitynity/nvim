- packer plugin manager is used to install the plugins.

- init.lua is the main file where we call all plugins at neovim startup.

- lua directory contains individual plugin files and a file called plugins.lua.

- plugins.lua tells packer to import the plugins from git.
 
<br /> 
<br />

---
# Installation

-  cd ~/.config   <!-- cd into your config directory -->
-  git clone https://github.com/gitynity/nvim.git <!-- clone this repo -->
-  mkdir -p ~/.config/nvim/pack/packer/start <!-- Make directory structure like this to setup packer plugin mananger -->
-  cd ~/.config/nvim/pack/packer/start <!-- cd to this location to install clone packer  -->
-  git clone https://github.com/wbthomason/packer.nvim <!-- clone packer repo -->

---
<br />

# Directory structure of .config/nvim:

<img width="721" alt="Screenshot 2023-07-01 at 2 37 40 AM" src="https://github.com/gitynity/nvim-config/assets/23361845/f0646fc5-2bfd-4145-9aee-1781823f7827">








##### Note: Make sure not to keep the name of the plugin file same as the name of plugin, it can cause integration issues at nvim startup. 

##### For example, name of mason plugin file can be mason-config.lua instead of mason.lua. <br /> <br />  <br /> 

# UI look:

<img width="1427" alt="Screenshot 2023-07-01 at 2 47 06 AM" src="https://github.com/gitynity/nvim-config/assets/23361845/80651527-d453-42f1-9643-2a3e0e29e565">


<bre />

### References

- Percy Bolmé. [Learn How To Use NeoVim As an IDE](https://programmingpercy.tech/blog/learn-how-to-use-neovim-as-ide/) @ProgrammingPercy.
