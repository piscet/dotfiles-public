call ddc#custom#patch_global('ui', 'native')
call ddc#custom#patch_global('sources', ['around', 'vim-lsp'])
call ddc#custom#patch_global('sourceOptions', {
    \       '_': {
    \           'matchers': ['matcher_head'],
    \           'sorters': ['sorter_rank'],
    \       },
    \       'around': {'mark':  '  [Around]'},
    \       'vim-lsp': {'mark': '     [LSP]'},
    \   })
call ddc#custom#patch_global('sourceParams', {
    \   'around': {'maxSize': 10},
    \   'vim-lsp': {'maxSize': 10},
    \   })
call ddc#custom#patch_global('backspaceCompletion', v:true)
call ddc#enable()

" g:ddc-option-backspaceCompletion=true
