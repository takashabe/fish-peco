function peco_select_tmux_window
  set -l query (commandline)
  if test -n $query
    set peco_flags --query "$query"
  end

  tmux list-windows -F '#I: #{?window_active,*, } #W "#{pane_current_command} #{pane_current_path}"' | peco $peco_flags | awk -F':' '{print $1}' | read line
  if test $line
    tmux select-window -t $line
    commandline -f repaint
  end
end
