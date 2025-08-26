function tree --description "Show directory tree with lsd"
    if command -q lsd
        lsd -la --tree --depth 1 $argv
    else if command -q tree
        command tree -a -L 1 $argv
    else
        echo "Neither lsd nor tree command found"
        return 1
    end
end
