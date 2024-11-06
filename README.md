## Neoconf the perfect C/C++ neovim configuration for getting started
### Installation:
#### windows:
```
cd %localappdata%/nvim
git clone https://github.com/gGameDevelop/Neoconf ~/.config/nvim && nvim
```
#### linux/mac:

```
cp ~/.config/nvim ~/.config/nvim.backup
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
mkdir ~/.config/nvim
git clone https://github.com/gGameDevelop/Neoconf ~/.config/nvim && nvim
```
*Run :TSInstall cpp command after lazy.nvim finishes downloading plugins.*
*Delete the .git folder from nvim folder.*
