return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = { enabled = false },

      explorer = {
        enabled = false,
      },
    },
    keys = {
      { "<leader>/", LazyVim.pick("live_grep", { root = false }), desc = "Grep (cwd)" },
      { "<leader><space>", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
    },
  },
}
