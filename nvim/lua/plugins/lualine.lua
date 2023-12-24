return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require('lualine').setup({
      options = {
        theme = 'moonfly',
        section_separators = {
          left = '',
          right = ''
        },
        component_separators = {
          left = '|',
          right = '|'
        },
      }
    })
  end
}
