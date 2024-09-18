return {
  'jpalardy/vim-slime',
  event = "VeryLazy",
  --
  init = function()
    vim.g.slime_target = "wezterm"
    vim.g.slime_bracketed_paste = 1
    --
    vim.g.slime_no_mappings = 1
    local keymap = vim.keymap.set
    keymap("n", "<C-CR>", ":SlimeSend<cr><cr>", { remap = true, silent = false })
    keymap("n", "<leader>sm", "<Plug>SlimeMotionSend", { remap = true, silent = false })
    keymap("v", "<C-CR>", "<Plug>SlimeRegionSend", { remap = true, silent = false })
		keymap("n", "<c-l>", ":SlimeConfig<cr>", { remap = true, silent = false })
    --
  end
  --
}
