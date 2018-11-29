function peco_select_cd
  set -l query (commandline)
  if test -n $query
    set peco_flags --query "$query"
  end

  set -l max_depth $PECO_SELECT_CD_MAX_DEPTH
  set -l ignore_case $PECO_SELECT_CD_IGNORE_CASE

  if test -z $max_depth
    set max_depth 3
  end

  if test -z $ignore_case
    find . -maxdepth $max_depth -type d | peco $peco_flags | read line
  else
    find . -maxdepth $max_depth -type d | egrep -v $ignore_case | peco $peco_flags | read line
  end

  if test $line
    cd $line
    commandline -f repaint
  end
end
