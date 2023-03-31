vim9script

### plugin/Vista
g:vista_sidebar_position = 'vertical topleft'
g:vista_default_execute = 'ctags'
g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
g:vista#renderer#enable_icon = 1
g:vista_highlight_whole_line = 1
autocmd BufEnter * if winnr("$") == 1 && vista#sidebar#IsOpen() | execute "normal! :q!\<CR>" | endif

nnoremap ta :Vista!!<cr>


