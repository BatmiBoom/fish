# STARSHIP (prompt)
if command -q starship
    starship init fish | source
end

# ZOXIDE (smart cd)
if command -q zoxide
    zoxide init fish | source
end

# PYENV (Python version manager)
if command -q pyenv
    pyenv init - | source
end
