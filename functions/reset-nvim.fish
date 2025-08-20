function reset_nvim --description "Reset Neovim configuration and data"
    echo "Removing Neovim directories..."
    rm -rf ~/.local/share/nvim
    rm -rf ~/.local/state/nvim  
    rm -rf ~/.cache/nvim
    echo "Neovim reset complete!"
end
