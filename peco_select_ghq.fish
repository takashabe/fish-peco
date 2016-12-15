function peco_select_ghq
  set -l query (commandline)
  if test -n $query
    set peco_flags --query "$query"
  end

  ghq list -p | peco $peco_flags | read line
  if test $line
    cd $line
    commandline -f repaint
  end
end
