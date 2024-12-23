# Fish function to start my fin-tools repo session

function fts
    z /home/lalho/workspace/fin-tools-backend-monorepo/fin-tools-backend-monorepo
    set SESSION "fin-tools-session"
    set SESSION_EXISTS (tmux list-sessions | grep -c $SESSION)

    if test $SESSION_EXISTS -eq 0
        tmux new-session -d -s $SESSION

        tmux rename-window -t 1 'Main'
        tmux split-window -h -t $SESSION:1
        z goal-planner
        # split the right pane vertically
        tmux split-window -v -t $SESSION:1

        tmux new-window -t $SESSION:2 -n 'Fin-Tools'
        tmux new-window -t $SESSION:3 -n 'Docker'
    end

    # Attach to session
    tmux attach-session -t $SESSION
    tmux select-window -t 1
end
