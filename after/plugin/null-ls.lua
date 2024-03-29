local null_ls = require('null-ls')

return {
  null_ls.builtins.code_actions.shellcheck,
  -- cspell.code_actions,

  null_ls.builtins.formatting.stylua,
  null_ls.builtins.formatting.sql_formatter,
  null_ls.builtins.formatting.jq,
  null_ls.builtins.formatting.gofumpt,
  null_ls.builtins.formatting.markdownlint,
  null_ls.builtins.formatting.black.with({
    extra_args = { '-l', '79' },
  }),
  null_ls.builtins.formatting.djlint,
  null_ls.builtins.formatting.taplo,
  null_ls.builtins.formatting.shfmt,
  null_ls.builtins.formatting.rustfmt,
  null_ls.builtins.formatting.prettier.with({
    filetypes = { 'html', 'javascript', 'typescript', 'css', 'markdown', 'vue', 'graphql' },
  }),

  null_ls.builtins.diagnostics.selene,
  -- cspell.diagnostics,
  null_ls.builtins.diagnostics.mypy.with({
    method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
    condition = function()
      return vim.fn.executable('mypy') == 1
    end,
  }),
  null_ls.builtins.diagnostics.pylint.with({
    method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
    condition = function()
      return vim.fn.executable('pylint') == 1
    end,
  }),
  null_ls.builtins.diagnostics.flake8.with({
    args = { '--format', 'default', '--max-line-length', '160', '--stdin-display-name', '$FILENAME', '-' },
  }),
  null_ls.builtins.diagnostics.djlint,
  null_ls.builtins.diagnostics.actionlint,
  null_ls.builtins.diagnostics.hadolint,
  -- null_ls.builtins.diagnostics.markdownlint,
  null_ls.builtins.diagnostics.shellcheck,
  null_ls.builtins.formatting.just,
}

