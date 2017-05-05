_swift_complete()
{
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

    case "$prev" in
        package)
            opts="clean describe dump-package edit fetch generate-xcodeproj init pin reset show-dependencies tools-version unedit unpin update"
            ;;
        *)
            opts="build demangle package test update"
            ;;
    esac

    COMPREPLY=($(compgen -W "$opts" -- "$cur"))
    return 0
}
complete -F _swift_complete swift
