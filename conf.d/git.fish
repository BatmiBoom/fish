# Git specific configurations

# Git editor
set -gx GIT_EDITOR nvim

# Git pager
set -gx GIT_PAGER "less -R"

# Git colors
set -gx LESS "-R"

# Enable Git completion and prompt
if command -q git
    # Git status in prompt (si usas un tema personalizado)
    set -g __fish_git_prompt_showdirtystate yes
    set -g __fish_git_prompt_showstashstate yes
    set -g __fish_git_prompt_showuntrackedfiles yes
    set -g __fish_git_prompt_showupstream auto
    
    # Git prompt colors
    set -g __fish_git_prompt_color_branch magenta
    set -g __fish_git_prompt_color_dirtystate red
    set -g __fish_git_prompt_color_stagedstate green
    set -g __fish_git_prompt_color_untrackedfiles cyan
end
