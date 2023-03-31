vim9script

### plugin/easymotion
g:EasyMotion_do_mapping = 0
g:EasyMotion_smartcase = 0
nnoremap <leader> <Plug>(easymotion-prefix)

#### <Leader>f{char} to move to {char}
nnoremap mf <Plug>(easymotion-bd-f)
nnoremap mf <Plug>(easymotion-overwin-f)

#### <Leader>s{char}{char} to move to {char}{char}
nnoremap ms <Plug>(easymotion-overwin-f2)

#### Move to line
nnoremap ml <Plug>(easymotion-bd-jk)
nnoremap ml <Plug>(easymotion-overwin-line)

#### Move to word
nnoremap mw <Plug>(easymotion-bd-w)
nnoremap mw <Plug>(easymotion-overwin-w)
