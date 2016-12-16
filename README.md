# fish-peco

[peco](https://github.com/peco/peco) select functions for fish shell

## Install

[Fisherman](https://github.com/fisherman/fisherman):

```fish
fisher takashabe/fish-pretty-theme
```

## Usage

Add key bindings to `config.json - fish_user_key_bindings`:

```fish
function fish_user_key_bindings
  bind \c] peco_select_ghq      # Ctrl-]
  bind \cr peco_select_history  # Ctrl-r
end
```

Type these bound keys you can use the function.

You can change the key binding to anything.
