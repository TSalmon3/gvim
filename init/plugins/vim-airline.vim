vim9script

### plugin/vim-ariline
g:airline_theme = 'papercolor'
g:airline#extensions#branch#vcs_checks = ['untracked', 'dirty']
g:airline#extensions#tabline#enabled = 1
g:airline#extensions#tabline#left_sep = ''

g:airline_left_sep = ''
g:airline_left_alt_sep = ''
g:airline_right_sep = ''
g:airline_right_alt_sep = ''

if !exists('g:airline_symbols')
    g:airline_symbols = {}
endif

g:airline_symbols.branch = ''
g:airline_symbols.colnr = ' ℅:'
g:airline_symbols.readonly = ''
g:airline_symbols.linenr = ' :'
g:airline_symbols.maxlinenr = '☰ '
g:airline_symbols.dirty = '⚡'

g:airline#extensions#tabline#buffer_idx_mode = 1
nnoremap <leader>1 <Plug>AirlineSelectTab1
nnoremap <leader>2 <Plug>AirlineSelectTab2
nnoremap <leader>3 <Plug>AirlineSelectTab3
nnoremap <leader>4 <Plug>AirlineSelectTab4
nnoremap <leader>5 <Plug>AirlineSelectTab5
nnoremap <leader>6 <Plug>AirlineSelectTab6
nnoremap <leader>7 <Plug>AirlineSelectTab7
nnoremap <leader>8 <Plug>AirlineSelectTab8
nnoremap <leader>9 <Plug>AirlineSelectTab9
nnoremap <leader>0 <Plug>AirlineSelectTab0

nnoremap <leader>- <Plug>AirlineSelectPrevTab
nnoremap <leader>= <Plug>AirlineSelectNextTab


