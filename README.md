## Neopp the perfect neovim configuration for getting started with C/C++
### Installation:
#### windows:
```
cd %localappdata%/nvim
git clone https://github.com/gGameDevelop/neopp %localappdata%/nvim && nvim
```
#### linux/mac:

```
cp ~/.config/nvim ~/.config/nvim.backup
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
mkdir ~/.config/nvim
git clone https://github.com/gGameDevelop/neopp ~/.config/nvim && nvim
```
*Run :TSInstall cpp command after lazy.nvim finishes downloading plugins.*
*Delete the .git folder from nvim folder.*
