function peco_select_file
  set -l query (commandline)
  if test -n $query
    set peco_flags --query "$query"
  end

  ag -l | peco $peco_flags | read line
  if test $line
    commandline "$EDITOR $line"
    commandline -f execute
  end
end
