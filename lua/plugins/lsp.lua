return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = true },
      codelens = { enabled = true },
      servers = {
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              assist = {
                importMergeBehavior = "last",
                importPrefix = "by_self",
              },
              diagnostics = {
                disabled = { "unresolved-import" },
                enable = true,
              },
              cargo = {
                buildScripts = {
                  enable = true,
                },
              },
              procMacro = {
                enable = true,
              },
              checkOnSave = {
                command = "clippy",
              },
              inlayHints = {
                lifetimeElisionHints = {
                  enable = true,
                  useParameterNames = true,
                },
                typeHints = {
                  enable = true,
                  hideNamedConstructor = false,
                },
                chainingHints = {
                  enable = true,
                },
                closureReturnTypeHints = {
                  enable = "always",
                },
              },
            },
          },
        },
      },
    },
  },
}
