if status is-interactive
    # Commands to run in interactive sessions can go here
set -x LANG zh_CN.UTF-8
set -x LC_ALL zh_CN.UTF-8
set -x OPENCV_LOG_LEVEL 0
set -x OPENCV_VIDEOIO_PRIORITY_INTEL_MFX 0
alias vim nvim
alias ll='ls -l'
alias la='ls -la'
alias ..='cd ..'
end
