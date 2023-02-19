require('palenightfall').configure_colors({
  --cyan = '#ff0000',
})
require('palenightfall').configure_highlights({
  --Normal = { fg = '#ff0000' },
})

-- Make sure to call `.setup()` *after* configuration
require('palenightfall').setup()
