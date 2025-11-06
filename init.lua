require("plugins.plugins-setup")

require("core.options")
require("core.keymaps")

-- 插件
require("plugins.lualine")
require("plugins/nvim-tree")
require("plugins/treesitter")
require("plugins/lsp")
require("plugins/cmp")
require("plugins/comment")
require("plugins/autopairs")
require("plugins/bufferline")
require("plugins/gitsigns")
require("plugins/telescope")

local cmp = require('cmp')

cmp.setup({
    mapping = {
        ['<CR>'] = cmp.mapping({
            i = function(fallback)
                if cmp.visible() then
                    fallback()
                else
                    fallback()
                end
            end
        }),
        ['<Tab>'] = cmp.mapping.confirm({ select = true }),
    }
})
