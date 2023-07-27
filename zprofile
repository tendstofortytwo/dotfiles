# fix for WSL not starting ssh-agent on boot
if [ -z "$SSH_AUTH_SOCK" ] ; then
    eval `ssh-agent -s`
    grep -slR PRIVATE ~/.ssh/ | xargs ssh-add
fi

# fix for firefox using xwayland instead of wayland native
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    export MOZ_ENABLE_WAYLAND=1
fi

export TENDS_TO=42
