packadd vim-jetpack
call jetpack#begin()
Jetpack 'tani/vim-jetpack', {'opt': 1} "bootstrap

" color scheme
Jetpack 'tomasr/molokai', {'do': 'cp colors/* ~/.vim/colors/'}
Jetpack 'jacoborus/tender.vim', {'do': 'cp colors/* ~/.vim/colors/'}

" plugin
"" auto complement
Jetpack 'Shougo/ddc.vim'
" Jetpack 'shun/ddc-vim-lsp'
Jetpack 'shun/ddc-source-vim-lsp'
Jetpack 'vim-denops/denops.vim'

""" ddc plugin
Jetpack 'Shougo/ddc-ui-native'
Jetpack 'Shougo/ddc-source-around'
Jetpack 'Shougo/ddc-filter-matcher_head'
Jetpack 'Shougo/ddc-filter-sorter_rank'

"" lsp
Jetpack 'prabirshrestha/vim-lsp'
Jetpack 'mattn/vim-lsp-settings'
Jetpack 'hrsh7th/vim-vsnip'
Jetpack 'hrsh7th/vim-vsnip-integ'

Jetpack 'tpope/vim-surround'

"" complementation
Jetpack 'cohama/lexima.vim'

"" comment
Jetpack 'tpope/vim-commentary'

"" indent
Jetpack 'Yggdroot/indentLine'

"" airline
Jetpack 'vim-airline/vim-airline'
Jetpack 'vim-airline/vim-airline-themes'

"" git
Jetpack 'airblade/vim-gitgutter'
Jetpack 'tpope/vim-fugitive'

" language
"" arduino
Jetpack 'sudar/vim-arduino-syntax'

"" markdown
"Jetpack 'skanehira/preview-markdown.vim'

call jetpack#end()

