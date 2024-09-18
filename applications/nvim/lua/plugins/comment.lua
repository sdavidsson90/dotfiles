return {
    'terrortylor/nvim-comment',
    lazy = false,
    config = function()
      require('nvim_comment').setup()
    end,
    --
    vim.keymap.set({'n', 'v'}, '', ':CommentToggle<cr>'),
}
