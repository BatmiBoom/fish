function yy --description "Yazi file manager with directory change support"
    set tmp (mktemp)
    yazi $argv --cwd-file="$tmp"
    
    if test -r "$tmp"
        set cwd (cat "$tmp")
        if test -n "$cwd" -a "$cwd" != "$PWD"
            cd "$cwd"
        end
    end
    
    rm -f "$tmp"
end
