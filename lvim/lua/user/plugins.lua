lvim.plugins{
  "JoosepAlviste/palenightfall.nvim",
  config = function()
   require('palenightfall').setup({
      transparent = true,
    })
  end
}
