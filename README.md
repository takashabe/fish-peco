# fish-peco

[peco](https://github.com/peco/peco) select functions for fish shell

## Install

[Fisherman](https://github.com/fisherman/fisherman):

```fish
fisher takashabe/fish-peco
```

## Feature

Use peco with:

* [ghq](https://github.com/motemen/ghq)
* history
* [z](https://github.com/fisherman/z)
* [ag](https://github.com/ggreer/the_silver_searcher)
* [k8s context](https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands#config)

## Usage

Type the function name on the shell.

```fish
peco_select_ghq
```

Or you can easily use it by adding key binding to `config.fish`.

```fish
function fish_user_key_bindings
  bind \c] peco_select_ghq      # Ctrl-]
  bind \cr peco_select_history  # Ctrl-r
  bind \cj peco_select_z        # Ctrl-j
  bind \cf peco_select_file     # Ctrl-f
end
```

Type these bound keys you can use the function. You can change the key binding to anything.
