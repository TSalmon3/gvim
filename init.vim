vim9script

var home = fnamemodify(expand('<sfile>:p'), ':h') 

command! -nargs=1 LoadScript exec 'so ' .. fnameescape(home .. '/<args>')

exec 'set rtp+=' .. home 

# vim editor setting 
LoadScript init/setting.vim

# vim keymap
LoadScript init/keymap.vim

# plugin cache file path setting
LoadScript init/user.vim

# plugin install & setting
LoadScript init/plugins.vim

