vim9script

## keymap
g:mapleader = ","
g:localmapleader = "<space>"

### keymap/save
nnoremap <c-s> :w<cr>

### keymap/scoll
nnoremap K 2<c-y>
nnoremap J 2<c-e>

### keymap/window split
nnoremap sv :vsplit<cr>
nnoremap sh :split<cr>

### keymap/window close
nnoremap sc :quit<cr>

### keymap/window toggle
nnoremap <a-h> <C-w>h
nnoremap <a-j> <C-w>j
nnoremap <a-k> <C-w>k
nnoremap <a-l> <C-w>l

### keymap/window resize
nnoremap <a-Left> :vertical resize -2<cr>
nnoremap <a-Right> :vertical resize +2<cr>
nnoremap <a-Up> :resize -2<cr>
nnoremap <a-Down> :resize +2<cr>

### keymap/Fast to exit insert/visual mode
inoremap jk <esc>
vnoremap jk <esc>

### keymap/Fast open and source .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

### keymap/switch between termianl win to nerdtree win or editor win
tnoremap <a-j> <c-w>j
tnoremap <a-k> <c-w>k
tnoremap <a-h> <c-w>h
tnoremap <a-l> <c-w>l
