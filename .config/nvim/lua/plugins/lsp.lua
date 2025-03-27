return {
  -- tools
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "selene",
        "gopls",
        "luacheck",
        "postgrestools",
        "pyright",
        "rust-analyzer",
        "shellcheck",
        "shfmt",
        "svelte-language-server",
        "tailwindcss-language-server",
        "typescript-language-server",
        "css-lsp",
      })
    end,
  },
}
