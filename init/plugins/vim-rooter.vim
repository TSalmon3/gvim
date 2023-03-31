vim9script

### Plugin/vim-rooter
g:rooter_targets = '/,*'
g:rooter_patterns = ['.git']
g:rooter_manual_only = 1
g:rooter_cd_cmd = "cd"
g:rooter_silent_chdir = 0
nnoremap cd :Rooter<cr>

