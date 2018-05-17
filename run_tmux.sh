#!/bin/bash
TMUX="TERM=screen-256color tmux -2 $@"
echo 'List of existing sessions:'
echo '(attach with: "tmux attach -t #")'
tmux list-sessions
#SESSIONS=/usr/bin/tmux ls -F '#{session_id}: #{?session_attached,1 (attached),0 (not attached)}; created: #{session_created_string}'
#echo "$SESSIONS"
#{
#echo '$line'
#}

# Info
echo ''
echo -e '- To list sessions use:     \E[1;34mCTRL-A : list-sessions\E[0m? '
echo -e '- To kill a session use:    \E[1;34mCTRL-A : kill-session -t #\E[0m? '
echo -e '- To list sessions use:     \E[1;34mCTRL-A : list-sessions\E[0m? '
echo -e '- To save a session use:    \E[1;34mCTRL-A CTRL-S\E[0m? '
echo -e '- To recover a session use: \E[1;34mCTRL-A CTRL-R\E[0m? '
echo ''
echo -e '- Upgrade plugins with \E[1;34mCTRL-A U\E[0m? '
echo ''

# Start tmux
echo -e '... Start \E[1;34mtmux\E[0m? [Y,n]'
read RUNTMUX
case $RUNTMUX in
    Y|y|$"")
        eval $TMUX
    ;;
    *)
        bash
esac
