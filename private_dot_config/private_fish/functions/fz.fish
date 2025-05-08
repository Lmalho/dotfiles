# Function to cd into the directory of a file found by fzf
function fz
  cd (fzf | xargs dirname)
end
