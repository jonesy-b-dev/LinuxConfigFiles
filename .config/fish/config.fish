# ~/.config/fish/config.fish
#
# Converted from ~/.bashrc
#

# ── Fish ────────────────────────────────────────────────────────────────────
set -U fish_color_autosuggestion white
bind \t forward-char
set -g fish_greeting
set -U fish_prompt_pwd_dir_length 0

# ── Editor ────────────────────────────────────────────────────────────────────
set -gx EDITOR nvim
set -gx VISUAL nvim

# ── Pager / coloured man pages ────────────────────────────────────────────────
set -gx PAGER less
set -gx LESS '-R'
set -gx LESS_TERMCAP_mb \e'[01;31m'
set -gx LESS_TERMCAP_md \e'[01;31m'
set -gx LESS_TERMCAP_me \e'[0m'
set -gx LESS_TERMCAP_se \e'[0m'
set -gx LESS_TERMCAP_so \e'[01;44;33m'
set -gx LESS_TERMCAP_ue \e'[0m'
set -gx LESS_TERMCAP_us \e'[01;32m'

# ── PATH additions ────────────────────────────────────────────────────────────
fish_add_path "$HOME/.local/scripts"

# ── Rust / Cargo ──────────────────────────────────────────────────────────────
fish_add_path "$HOME/.cargo/bin"

# ── Aliases (sourced from ~/.config/fish/aliases.fish if it exists) ───────────
if test -f ~/.config/fish/aliases.fish
    source ~/.config/fish/aliases.fish
end

# ── Tmux sessionizer  (Ctrl-A Ctrl-F) ────────────────────────────────────────
# Fish uses `bind` with readline-style sequences; map \ca\cf to the script.
bind \ca\cf 'tmux-sessionizer; commandline -f repaint'

# ── Prompt ────────────────────────────────────────────────────────────────────
function fish_prompt
    # Time  [HH:MM]
    set -l time (set_color yellow --bold)(date +%H:%M)(set_color normal)

    # Git branch
    set -l branch ''
    if command -q git
        set -l b (git branch 2>/dev/null | string match -r '^\* (.+)' | head -n2 | tail -n1)
        if test -n "$b"
            set branch "($b)"
        end
    end

    # User / path
    set -l user  (set_color green)$USER(set_color normal)
    set -l dir   (set_color magenta)(prompt_pwd)(set_color normal)

    echo -n "[$time]$branch$user:$dir\$ "
end
