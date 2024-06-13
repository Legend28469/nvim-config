return {
  'rmagatti/auto-session',
  lazy = false,
  opts = {
    auto_restore_enabled = false,
    auto_session_suppress_dirs = { '~/', '~/Dev/', '~/Downloads', '~/Documents', '~/Desktop/' },
  },
  keys = {
    {
      '<leader>ww',
      '<cmd>SessionSave<CR>',
      mode = 'n',
      desc = '[W]orkspace [W]rite session',
    },
    {
      '<leader>wr',
      '<cmd>SessionRestore<CR>',
      mode = 'n',
      desc = '[W]orkspace [R]estore session',
    },
  },
}
