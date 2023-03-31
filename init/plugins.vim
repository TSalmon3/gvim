vim9script

import './user.vim' as usr

## plugin
plug#begin(usr.config.plugin_install_path)
Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'romainl/vim-cool'
Plug 'voldikss/vim-floaterm'
Plug 'airblade/vim-rooter'
Plug 'vim-autoformat/vim-autoformat'
Plug 'gelguy/wilder.nvim'
Plug 'Yggdroot/indentLine'
Plug 'mg979/vim-visual-multi', {'branch':'master'}
Plug 'justinmk/vim-dirvish'
Plug 'Yggdroot/LeaderF'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'luochen1990/rainbow'
Plug 'liuchengxu/vista.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-function'
Plug 'sgur/vim-textobj-parameter'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-line'
Plug 'zhaosheng-pan/vim-im-select'
Plug 'skywind3000/vim-dict'
Plug 'babaybus/DoxygenToolkit.vim'
Plug 'mbbill/undotree'

# Plug 'ludovicchabant/vim-gutentags'
# Plug 'skywind3000/gutentags_plus' 
plug#end() 



def GetConfigFileName(plug: string): string
        var config_file = ''
        config_file = usr.config.plugin_config_dir .. '/' .. plug .. '.vim' 
        return config_file
enddef


for [plug, _] in items(g:plugs)
        if filereadable(GetConfigFileName(plug))
                exec 'so ' .. GetConfigFileName(plug)
        endif
endfor 


