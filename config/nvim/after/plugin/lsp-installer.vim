lua << EOF
local lsp_installer = require('nvim-lsp-installer')

lsp_installer.on_server_ready(function(server) 
  local opts = {}

  server:setup(opts)

  lsp_installer.settings({
    ui = {
      icons = {
        server_installed = "✓",
        server_pending = "➜",
        server_uninstalled = "✗"
      }
    }
  })
end)
EOF
