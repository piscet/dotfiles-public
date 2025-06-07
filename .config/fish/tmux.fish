set _read_cmd "echo 'choose session > '"
set _new_session_cmd "echo 'session name (Default name is session id)> '"

if not status is-interactive; \
   or set -q SSH_CLIENT; \
   or string length -q -- $TMUX
    exit 0
end

if not tty | grep "/dev/pts" > /dev/null
    exit 0
end

if not set -q SESSION_NAME
    set -x SESSION_NAME Term
end

if not tmux list-sessions -F\#S | grep -q $SESSION_NAME
    tmux new -s $SESSION_NAME
    exit 0
end

printf 'Cannot create session %s ' $SESSION_NAME
printf 'due to duplicate session name.\n'
printf "\n"

while true
    for line in (tmux list-sessions -F '#{session_id} #{?session_attached,yes,no} #S')
        set _line_split (echo $line | string split ' ')
        set _session_id     $_session_id     $_line_split[1]
        set _session_active $_session_active $_line_split[2]
        set _session_name   $_session_name   $_line_split[3]
    end

    set _num_of_session (count $_session_id)
    set _index_list (seq $_num_of_session)
    printf 'index | active | session_id : session_name\n'
    printf '------+--------+----------------------------\n'
    for i in $_index_list
        printf '%5d | ' $i
        printf '%6s | ' $_session_active[$i]
        printf '%s \t: %s\n' $_session_id[$i] $_session_name[$i]
    end

    printf '\n'
    printf 'Please select an index number, n or q.\n'
    printf '  n : create a new session.\n'
    printf '  q : quit tmux.\n'
    printf '\n'

    read -p $_read_cmd _select_index
    printf '\n'

    if not string length -q -- $_select_index
        break
    end

    switch $_select_index
        case n
            # create new session.
            while true
                read -p $_new_session_cmd _new_session_name; 

                if not string length -q -- $_new_session_name
                    tmux new
                    exit 0
                end

                if not tmux list-sessions -F\#S | grep -q $_new_session_name
                    printf 'create session %s...\n\n' $_new_session_name

                    if not tmux new -s $_new_session_name
                        printf '\n'
                        printf 'Error: Failed to create session %s ' $_new_session_name
                        printf 'due to an error with the tmux command.\n'
                    end

                    break
                else
                    printf 'Error: Failed to create session %s ' $_new_session_name
                    printf 'due to a duplicate session name.\n'
                end

                printf 'please specify a different session name.\n\n'
                set -e _new_session_name
            end

            break
        case q
            # quit
            break
        case $_index_list
            # select
            set _attach_name $_session_name[$_select_index]
            if not tmux attach-session -t $_attach_name
                printf '\n'
                printf 'Error: Failed to attach session %s ' $_attach_name
                printf 'due to an error with the tmux command.\n'
            end
            exit 0
        case \*
            # default
            printf "Error: Invalid Argument %s.\n" $_index_list
    end

    # erase variable
    set -e _session_id
    set -e _session_active
    set -e _session_name
    set -e _select_index
end

printf "quit.\n"

