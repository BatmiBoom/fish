function l --description "List files with lsd in long format"
    if command -q lsd
        lsd -l $argv
    else
        ls -l $argv
    end
end
