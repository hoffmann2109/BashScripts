cd() {
    builtin cd "$@"
    ls --color --group-directories-first -Xh
}
