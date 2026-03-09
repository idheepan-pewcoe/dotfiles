return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- Add tinymist configuration
      tinymist = {
        -- Use Mason-installed tinymist
        mason = true,
        settings = {
          formatterMode = "typstyle", -- Use typstyle for formatting
          exportPdf = "onSave", -- Auto-export PDF on save (or "onType")
        },

        -- Custom keymaps for Typst
        keys = {
          {
            "<leader>tp",
            function()
              vim.lsp.buf.execute_command({
                command = "tinymist.pinMain",
                arguments = { vim.api.nvim_buf_get_name(0) },
              })
            end,
            desc = "Pin main Typst file",
            ft = "typst",
          },
          {
            "<leader>tu",
            function()
              vim.lsp.buf.execute_command({
                command = "tinymist.pinMain",
                arguments = { vim.v.null },
              })
            end,
            desc = "Unpin Typst main file",
            ft = "typst",
          },
        },
      },
    },
  },
}
