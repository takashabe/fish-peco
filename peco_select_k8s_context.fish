function peco_select_k8s_context
  set -l query (commandline)
  if test -n $query
    set peco_flags --query "$query"
  end

  kubectl config get-contexts --no-headers=true | awk '{print $2}'| peco $peco_flags | read line
  if test $line
    commandline "kubectl config use-context $line"
  else
    commandline ''
  end
end
