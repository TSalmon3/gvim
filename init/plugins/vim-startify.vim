vim9script

import '../user.vim' as usr

### Plugin/starify
nnoremap <a-s> :Startify<cr>
g:startify_lists = [
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ ]

# g:startify_bookmarks = ['~/OneDrive/Document/Obsidian/bookmark/index.md']

g:startify_session_dir = usr.config.session_cache_dir
nnoremap <leader>ss :SSave<cr>
nnoremap <leader>sc :SClose<cr>


