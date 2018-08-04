function peco_select_k8s_namespace
  set -l query (commandline)
  if test -n $query
    set peco_flags --query "$query"
  end

  kubectl get namespaces --no-headers=true | awk '{print $1}'| peco $peco_flags | read line
  if test $line
    commandline "kubectl config set-context (kubectl config current-context) --namespace=$line"
  else
    commandline ''
  end
end
