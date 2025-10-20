require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Lua
vim.lsp.config["lua_ls"] = {
  cmd = { "lua-language-server" },
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
      workspace = { checkThirdParty = false },
    },
  },
}

-- Python
vim.lsp.config["pyright"] = {
  cmd = { "pyright-langserver", "--stdio" },
  capabilities = capabilities,
}

-- C/C++
vim.lsp.config["clangd"] = {
  cmd = { "clangd" },
  capabilities = capabilities,
}

-- Bash
vim.lsp.config["bashls"] = {
  cmd = { "bash-language-server", "start" },
  capabilities = capabilities,
}

-- 启用全部 LSP
vim.lsp.enable({ "lua_ls", "pyright", "clangd", "bashls" })
