vim9script

import '../user.vim' as usr

### plugin/coc
g:coc_config_home = usr.config.coc_config_dir
g:coc_data_home = usr.config.coc_cache_dir
g:coc_global_extensions = [
        \ 'coc-marketplace',
        \ 'coc-json',
        \ 'coc-clangd',
        \ 'coc-vimlsp',
        \ 'coc-explorer',
        ]

# Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
# Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
# delays and poor user experience.
set updatetime=300
# Always show the signcolumn, otherwise it would shift the text each time
# diagnostics appear/become resolved.
set signcolumn=yes
# Use tab for trigger completion with characters ahead and navigate.
# NOTE: There's always complete item selected by default, you may want to enable
# no select by `"suggest.noselect": true` in your configuration file.
# NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
# other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
  \ coc#pum#visible() ? coc#pum#next(1) :
  \ CheckBackspace() ? "\<Tab>" :
  \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

# Make <CR> to accept selected completion item or notify coc.nvim to format
# <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                          \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

def CheckBackspace(): bool
var col = col('.') - 1
return !col || getline('.')[col - 1]  =~# '\s'
enddef

# Use <c-o> to trigger completion.
inoremap <silent><expr> <c-o> coc#refresh()

# Use `[g` and `]g` to navigate diagnostics
# Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
# nnoremap <silent> g[ <Plug>(coc-diagnostic-prev)
# nnoremap <silent> g] <Plug>(coc-diagnostic-next)
# nnoremap <silent> ge <Plug>(coc-diagnostic-prev-error)
# nnoremap <silent> gE <Plug>(coc-diagnostic-next-error)
nnoremap <silent> <a-d> :CocDiagnostics<cr>

# GoTo code navigation.
nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> gr <Plug>(coc-references)

# GoTo diagnostic 
# nnoremap <silent> g] <Plug>(coc-diagnostic-next)
# nnoremap <silent> g[ <Plug>(coc-diagnostic_prev)
# nnoremap <silent> ge <Plug>(coc-diagnostic_next_error)
# nnoremap <silent> gE <plug>(coc-diagnostic_prev_error)
# nnoremap <silent> da <Plug>(coc-list-diagnostics)

# Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>q  <Plug>(coc-fix-current)

# Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

def ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    CocActionAsync('doHover')
  else
    feedkeys('K', 'in')
  endif
enddef

# Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight') 

# Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

# coc/coc-explorer
nnoremap te <Cmd>CocCommand explorer --toggle --position right<CR> 
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif


