#!/bin/sh

c=`tput cols`
w=$(($c-20))

tmux new-session -s "work" -n "TaskWarrior" -d 'watch "task proj && tmux resize-pane -t 1 -x 20"'
tmux split-window -h 'tasksh'
tmux resize-pane -t 1 -x 20
tmux send-keys -t 1.right "sync" C-m
tmux send-keys -t 1.right "context Privat" C-m
tmux send-keys -t 1.right "next" C-m
tmux -2 attach-session -d 
