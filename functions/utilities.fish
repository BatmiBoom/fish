# Utility functions

function mkcd --description "Create directory and cd into it"
    mkdir -p $argv[1]; and cd $argv[1]
end

function extract --description "Extract various archive formats"
    if test -f $argv[1]
        switch $argv[1]
            case "*.tar.bz2"
                tar xjf $argv[1]
            case "*.tar.gz"
                tar xzf $argv[1]
            case "*.bz2"
                bunzip2 $argv[1]
            case "*.rar"
                unrar x $argv[1]
            case "*.gz"
                gunzip $argv[1]
            case "*.tar"
                tar xf $argv[1]
            case "*.tbz2"
                tar xjf $argv[1]
            case "*.tgz"
                tar xzf $argv[1]
            case "*.zip"
                unzip $argv[1]
            case "*.Z"
                uncompress $argv[1]
            case "*.7z"
                7z x $argv[1]
            case "*"
                echo "Unknown archive format: $argv[1]"
        end
    else
        echo "File $argv[1] not found"
    end
end

function weather --description "Get weather for a city"
    curl -s "wttr.in/$argv[1]"
end

function cheat --description "Get cheatsheet for a command"
    curl -s "cheat.sh/$argv[1]"
end

function backup_dotfiles --description "Backup configuration files"
    set backup_dir ~/dotfiles_backup_(date +%Y%m%d_%H%M%S)
    mkdir -p $backup_dir
    
    cp -r ~/.config/fish $backup_dir/
    cp -r ~/.config/nvim $backup_dir/ 2>/dev/null
    cp ~/.gitconfig $backup_dir/ 2>/dev/null
    
    echo "Dotfiles backed up to: $backup_dir"
end

function find_large_files --description "Find large files in current directory"
    find . -type f -size +100M -exec ls -lh {} \; | awk '{print $9 ": " $5}'
end

function port_check --description "Check if port is open"
    if test (count $argv) -eq 0
        echo "Usage: port_check <port>"
        return 1
    end
    
    if netstat -tuln | grep -q ":$argv[1] "
        echo "Port $argv[1] is open"
    else
        echo "Port $argv[1] is closed"
    end
end
