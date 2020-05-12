#!/usr/bin/env bash

# DESCRIPTION: Bash completion script for the Cumulus CLI
# AUTHOR: Todd Halfpenny (@toddhalfpenny)
# REPO: https://github.com/toddhalfpenny/cci-cli-bash-completion
# LICENSE: https://github.com/toddhalfpenny/cci-cli-bash-completion/blob/master/LICENSE
# Inspired by https://github.com/wadewegner/salesforce-cli-bash-completion


_cci()
{
    local cur
    local prev

    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    prev2="${COMP_WORDS[COMP_CWORD-2]}"

    local -a words=(
      error \
      flow \
      org \
      project \
      service \
      shell \
      task \
      version
    )

    local -a errorWords=(
        gist \
        info
    )

    local -a flowWords=(
        info \
        list \
        run
    )

    local -a orgWords=(
        browser \
        connect \
        default \
        import \
        info \
        list \
        remove \
        scratch \
        scratch_delete \
        shell
    )

    local -a projectWords=(
        dependencies \
        info \
        init
    )

    local -a serviceWords=(
        connect \
        info \
        list
    )

    local -a serviceConnectWords=(
        apextestsdb \
        connected_app \
        devhub \
        github \
        metaci \
        metadeploy \
        saucelabs \
    )

    local -a taskWords=(
        doc \
        info \
        list \
        run
    )

    case "$prev" in
    cci)
        COMPREPLY=( $(compgen -W "${words[*]}" -- $cur))
        ;;
    error)
        COMPREPLY=( $(compgen -W "${errorWords[*]}" -- $cur))
        ;;
    flow)
        COMPREPLY=( $(compgen -W "${flowWords[*]}" -- $cur))
        ;;
    org)
        COMPREPLY=( $(compgen -W "${orgWords[*]}" -- $cur))
        ;;
    project)
        COMPREPLY=( $(compgen -W "${projectWords[*]}" -- $cur))
        ;;
    service)
        COMPREPLY=( $(compgen -W "${serviceWords[*]}" -- $cur))
        ;;
    connect)
        case "$prev2" in
        service)
            COMPREPLY=( $(compgen -W "${serviceConnectWords[*]}" -- $cur))
            ;;
        *)
            # return to normal completion
            COMPREPLY=()
            ;;
        esac
        ;;
    task)
        COMPREPLY=( $(compgen -W "${taskWords[*]}" -- $cur))
        ;;
    *)
        # return to normal completion
        COMPREPLY=()
        ;;
    esac

    return 0
}

complete -o default -F _cci cci