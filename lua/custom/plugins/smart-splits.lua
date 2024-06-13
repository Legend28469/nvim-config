return {
  {
    'mrjones2014/smart-splits.nvim',
    opts = {},
    lazy = false,
    keys = {
      -- Resizing splits
      {
        '<A-h>',
        function()
          require('smart-splits').resize_left()
        end,
        mode = 'n',
        desc = 'Resize split left',
      },
      {
        '<A-j>',
        function()
          require('smart-splits').resize_down()
        end,
        mode = 'n',
        desc = 'Resize split down',
      },
      {
        '<A-k>',
        function()
          require('smart-splits').resize_up()
        end,
        mode = 'n',
        desc = 'Resize split up',
      },
      {
        '<A-l>',
        function()
          require('smart-splits').resize_right()
        end,
        mode = 'n',
        desc = 'Resize split right',
      },

      -- Moving between splits
      {
        '<C-h>',
        function()
          require('smart-splits').move_cursor_left()
        end,
        mode = 'n',
        desc = 'Move cursor left',
      },
      {
        '<C-j>',
        function()
          require('smart-splits').move_cursor_down()
        end,
        mode = 'n',
        desc = 'Move cursor down',
      },
      {
        '<C-k>',
        function()
          require('smart-splits').move_cursor_up()
        end,
        mode = 'n',
        desc = 'Move cursor up',
      },
      {
        '<C-l>',
        function()
          require('smart-splits').move_cursor_right()
        end,
        mode = 'n',
        desc = 'Move cursor right',
      },
      {
        '<C-\\>',
        function()
          require('smart-splits').move_cursor_previous()
        end,
        mode = 'n',
        desc = 'Move cursor to previous split',
      },
    },
  },
}
