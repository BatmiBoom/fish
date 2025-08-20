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

function git-reset --description "Git hard reset to specified commit"
    if not git rev-parse --git-dir >/dev/null 2>&1
        echo "Not in a git repository"
        return 1
    end
    
    if test (count $argv) -eq 0
        echo "Usage: git-reset <commit-hash|branch>"
        echo "Example: git-reset HEAD~1"
        echo "Example: git-reset origin/main"
        return 1
    end
    
    echo "WARNING: This will discard all local changes!"
    echo "Resetting to: $argv[1]"
    read -P "Continue? [y/N]: " confirm
    
    if test "$confirm" = "y" -o "$confirm" = "Y"
        git reset --hard $argv[1]
        echo "Reset completed"
    else
        echo "Reset cancelled"
    end
end
