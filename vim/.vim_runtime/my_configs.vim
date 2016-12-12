" ==================
" editor config
" ==================
set number
colorscheme atom-dark-256

map <silent> <C-n> :NERDTreeToggle<CR>
let g:ackprg = 'ag --nogroup --nocolor --column'

" =========================================
" Ag.vim
" =========================================
" Disable Ag quickfix and location list mappings.
let g:ag_apply_lmappings = 0
let g:ag_apply_qmappings = 0

" Default to literal (non-regex) searches.
let g:ag_prg="ag --vimgrep --literal"

" ====================
" editor settings
" ====================
set tabstop=4
