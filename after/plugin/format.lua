local format_on_save = require("format-on-save")
local formatters = require("format-on-save.formatters")

format_on_save.setup({
    exclude_path_patterns = {
        "/node_modules/",
        ".tex",
        ".md",
        ".zshrc",
        ".conf",
        ".go",
        "Dockerfile",
        ".txt"
    },
    formatter_by_ft = {
        css = formatters.lsp,
        html = formatters.lsp,
        java = formatters.lsp,
        javascript = formatters.lsp,
        json = formatters.lsp,
        lua = formatters.lsp,
        markdown = formatters.prettierd,
        openscad = formatters.lsp,
        python = {
            formatters.remove_trailing_whitespace,
            formatters.black,
            formatters.ruff,
        },
        rust = formatters.lsp,
        scad = formatters.lsp,
        scss = formatters.lsp,
        sh = formatters.shfmt,
        terraform = formatters.lsp,
        typescript = formatters.prettierd,
        typescriptreact = formatters.prettierd,
        yaml = formatters.lsp,

    --     go = {
    --         formatters.shell({
    --             cmd = { "goimports-reviser", "-rm-unused", "-set-alias", "-format", "%" },
    --             tempfile = function()
    --                 return vim.fn.expand("%") .. '.formatter-temp'
    --             end
    --         }),
    --         formatters.shell({ cmd = { "gofmt" } }),
    --     },
    },

    -- Fallback formatter
    fallback_formatter = {
        formatters.remove_trailing_whitespace,
        formatters.remove_trailing_newlines,
        formatters.prettierd,
    },

    run_with_sh = false,
})
