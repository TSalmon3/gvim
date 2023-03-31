vim9script

import '../user.vim' as usr

### plugin/Leaderf
g:Lf_CacheDirectory = usr.config.leaderf_cache_dir
g:Lf_GtagsAutoGenerater = 1
g:Lf_Gtagslabel = 'default'
g:Lf_Gtagsconf = usr.config.gtags_config_path
g:Lf_RootMarkers = ['.git']
nnoremap <a-f> :Leaderf rg -i<cr>
nnoremap <a-p> :Leaderf file<cr>
nnoremap <a-g> :Leaderf gtags --update<cr> :Leaderf gtags<cr>

# List Reference
noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
# List Definition
noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
# Recently gtags search windows
noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
# Jump to Last Search Resoult
noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
# Jump to Next Search Resoult
noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>

# Search Buffer
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
# Search MRU
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
# Search in BufTag
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
# Search in line
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>


