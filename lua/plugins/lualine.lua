return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup({
        options = {
          theme = 'auto', -- Matches your current colorscheme
          icons_enabled = true,
          section_separators = { left = '', right = '' },
          component_separators = { left = '', right = '' },
        },
        sections = {
          lualine_c = {
            {
              'filename',
              file_status = true,      -- Displays file status (readonly, modified)
              path = 1,                -- 0: Just filename, 1: Relative path
              symbols = {
                modified = ' ●',      -- The icon to show when unsaved
                readonly = ' ',      -- The icon to show when read-only
                unnamed = '[No Name]', -- Text for unnamed buffers
                newfile = '[New]',     -- Text for newly created files
              }
            }
          }
        }
      })
    end
  }
}
