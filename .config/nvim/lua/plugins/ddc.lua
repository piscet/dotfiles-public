local mysnippet = '~/.config/nvim/snippets'

vim.fn["ddc#custom#patch_global"]('ui', 'native')
vim.fn["ddc#custom#patch_global"]('sources', { 'around', 'vim-lsp' })
vim.fn["ddc#custom#patch_global"]('sourceOptions', {
    ["around"] = {
        mark = '  [Around]',
    },
    ["vim-lsp"] = {
        mark = '     [LSP]',
    },
    _ = {
        matchers = { 'matcher_head' },
        sources  = { 'sorter_rank' },
    }
})
vim.fn["ddc#custom#patch_global"]('sourceParams', {
    ["around"] = {
        maxSize = 10,
    },
    ["vim-lsp"] = {
        maxSize = 10,
    }
})
vim.fn["ddc#enable"]

--call ddc#custom#patch_global('backspaceCompletion', v:true)
--call ddc#enable()
