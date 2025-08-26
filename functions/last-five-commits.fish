function git-last-five-commit --description "Show last 5 commit hashes"
    if not git rev-parse --git-dir >/dev/null 2>&1
        echo "Not in a git repository"
        return 1
    end
    
    if command -q rg
        git log | rg "commit" -m 5
    else
        git log --oneline -5
    end
end
