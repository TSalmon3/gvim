vim9script

### Plugin/vim-floaterm
g:floaterm_height = 0.8
g:floaterm_width = 0.8
g:floaterm_autoclose = 2

nnoremap <F1> :FloatermToggle --cwd=<root><cr>
tnoremap <F1> <C-\><C-n>:FloatermToggle --cwd=<root><cr>

nnoremap tt :FloatermToggle<cr>
nnoremap txt :FloatermKill<cr>
tnoremap tt <C-\><C-n>:FloatermToggle<cr>
tnoremap txt <C-\><C-n>:FloatermKill<cr>
tnoremap <esc> <C-\><C-n>


