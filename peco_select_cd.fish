function peco_select_cd
  set -l query (commandline)
  if test -n $query
    set peco_flags --query "$query"
  end

  set -l ignore $PECO_SELECT_CD_IGNORE_DIR
  find . -maxdepth 3 -type d | egrep -v $ignore | peco $peco_flags | read line
  if test $line
    cd $line
    commandline -f repaint
  end
end
