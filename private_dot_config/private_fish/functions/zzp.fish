function zzp
  cd (zoxide query -l | fzf --preview "ls -l {}")
end
