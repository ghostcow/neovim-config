" CamelMappings
omap <silent> iw <Plug>CamelCaseMotion_iw
xmap <silent> iw <Plug>CamelCaseMotion_iw
omap <silent> ib <Plug>CamelCaseMotion_ib
xmap <silent> ib <Plug>CamelCaseMotion_ib
omap <silent> ie <Plug>CamelCaseMotion_ie
xmap <silent> ie <Plug>CamelCaseMotion_ie


" set shell to bash
set shell=/bin/bash

" my key mappings
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

" enablke csapprox
:let g:CSApprox_loaded = 1

" Enable Deoplete
let g:deoplete#enable_at_startup = 1

" Disable style messages in Syntastic
let g:syntastic_quiet_messages = { "type": "style", "level": "warnings", "regex": "\[F401\]" }

" PyMatcher for CtrlP
if !has('python')
	echo 'In order to use pymatcher plugin, you need +python compiled vim'
else
	let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
endif

" disable continuation of comments to the next line
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

" set tab length to 3 for lua files
au FileType lua setl sw=3 sts=3 et

" deoplete & deoplete_jedi
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'
set completeopt-=preview " remove preview window from deoplete
" autocmd CompleteDone * pclose " To close preview window of deoplete automagically

" fix garbage characters after cursor
set guicursor=
