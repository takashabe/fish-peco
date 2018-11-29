function peco_select_z
  set -l query (commandline)
  if test -n $query
    set peco_flags --query "$query"
  end

  z -l | sort -rn | cut -c 12- | peco $peco_flags | read line
  if test $line
    cd $line
    commandline -f repaint
  end
end
