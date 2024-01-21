return {
  'Vigemus/iron.nvim',
  event = "VeryLazy",
  config = function()
    local iron = require('iron.core')
    local view = require('iron.view')
    local bracketed_paste = require('iron.fts.common').bracketed_paste
    iron.setup({
      config = {
        ignore_blank_lines = false,
        close_window_on_exit = true,
        scratch_repl = true,
        repl_open_cmd = view.split.horizontal.botright(.35),
        repl_definition = {
          R = {command = 'R', format = bracketed_paste},
          python = {command = 'ipython', format = bracketed_paste},
          aicloud = {command = 'ssh ai-fe02', format = bracketed_paste},
          bash = {command = 'bash', format = bracketed_paste},
          zsh = {command = 'bash', format = bracketed_paste},

        },
      },
        keymaps = {
          send_line = '<C-CR>',
          visual_send = '<C-CR>',
          send_motion = '<leader>sm',
          send_file = '<space>sf',
        mark_visual = "<space>mc",
        remove_mark = "<space>md",
        interrupt = "<C-c>",
        exit = "<M-d>",
        clear = "<M-l>"
        },
    })
  end,
  --
  -- keymap('n', '<space>rs', '<cmd>IronRepl<cr>'),
  vim.keymap.set('n', '<space>rs', ":require('iron.core').IronRepl<cr>"),
  vim.keymap.set('n', '<space>rr', ':IronRestart<cr>'),
  vim.keymap.set('n', '<space>rf', ':IronFocus<cr>'),
  vim.keymap.set('n', '<space>rh', ':IronHide<cr>'),
  vim.keymap.set('n', '<space>rh', ':IronHide<cr>'),

}
