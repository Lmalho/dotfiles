# Fish function to start a repo session

function session
    # Check if fzf is installed
    if ! type -q fzf
        echo "fzf not found. Please install it to use this function (e.g., brew install fzf)."
        return 1
    end


    # Get a list of directories in the workspace
    set -l projects (find "$WORKSPACE_DIR" -maxdepth 1 -type d -print0 | xargs -0 -n 1 basename | grep -v "^\.")

    if test (count $projects) -eq 0
        echo "No projects found in $WORKSPACE_DIR."
        return 1
    end

    # Use fzf to let the user choose a project
    set -l chosen_project (printf "%s\n" $projects | fzf --prompt="Select a project: ")

    if test -z "$chosen_project"
        echo "No project selected."
        return 1
    end

    # Set the session name to the chosen project
    echo "$chosen_project"
    set -g SESSION "$chosen_project"

    # Change directory to the chosen project
    cd "$WORKSPACE_DIR/$chosen_project"

    # Check if a tmux session with this name already exists
    if ! tmux has-session -t "$SESSION" 2>/dev/null
        # If not, create a new detached session
        if not tmux new-session -d -s "$SESSION"
            echo "Error: Failed to create tmux session '$SESSION'."
            return 1
        end

        # Rename the first window
        if not tmux rename-window -t "$SESSION:1" 'Main'
            echo "Warning: Failed to rename window 1 of session '$SESSION'."
        end
        
        # Create window 2: Console
        if not tmux new-window -t "$SESSION" -n 'Console'
            echo "Warning: Failed to create 'Console' window in session '$SESSION'."
        end

        # Create window 3: Git
        if not tmux new-window -t "$SESSION" -n 'Git' 'lazygit'
            echo "Warning: Failed to create 'Git' window with lazygit in session '$SESSION'."
        end

        # Create window 4: Docker
        if not tmux new-window -t "$SESSION" -n 'Docker'
            echo "Warning: Failed to create 'Docker' window in session '$SESSION'."
        end
    end

    # Attach to the session
    if not tmux attach-session -t "$SESSION"
        echo "Error: Failed to attach to tmux session '$SESSION'."
        return 1
    end
end

