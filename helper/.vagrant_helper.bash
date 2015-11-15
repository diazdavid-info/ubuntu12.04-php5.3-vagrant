# source ~/.vagrant_helper.bash
# /usr/local/bin/vagra_bash.sh
command_vagrant_bash=(apache_status apache_restart)
_vagrant()
{
        local cur=${COMP_WORDS[COMP_CWORD]}
        COMPREPLY=( $(compgen -W '${command_vagrant_bash[*]}' -- $cur) )
}
complete -F _vagrant vagra_bash.sh
