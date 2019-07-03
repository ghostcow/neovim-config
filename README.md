# My dope ass configuration installation scriptation

## This script installs neovim with plugins and key maps based on bootstrap-vim:
``` https://github.com/avelino/vim-bootstrap#commands ```

## In addition to cool key mappings for plugins, my key mappings:
```
tnoremap <Esc> <C-\><C-n>
nnoremap ; :
imap <C-d> <Del>
imap jj <Esc>
imap fff <Esc>
vmap fff <Esc>
nmap <M-j> :res -5<CR>
nmap <M-l> :vertical res -5<CR>
nmap <M-h> :vertical res +5<CR>
nmap <M-k> :res +5<CR>
nmap <Leader>s :update<CR>
```

they are designed to keep your fingers on "home row" (the middle row of the keyboard).
in other words- 
```
'Ctrl+d' in insert mode is DEL
'jj' or 'fff' in insert mode -> exits insert mode
click ";" in normal mode to do ":"
Meta (Alt i think) + j/l/h/k adjusts the split screen if you use :vsplit or :hsplit (there are shortcuts for those too)
```

## Other cool things:
1. You can open tabs and split screens inside neovim, i forgot what's the shortcut but it's totally possible, check out the url at the top of the page.
2. you have shortcuts to jump from one tab to the next, or if you split screens then quickly switch from one screen to the next
3. type :term to open a terminal inside neovim. this is best when working in split screen because you can jump back and forth from the terminal to the code

# Last but not least, the script copies Sivan's tmux config to home dir, it makes your tmux cooler and makes the terminals interactive. Thanks Sivan!
