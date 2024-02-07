require 'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "go", "rust", "java", "yaml", "bash", "cmake", "cpp", "csv", "dockerfile", "gitignore", "gomod", "gosum", "html", "python", "javascript", "json", "kconfig", "kotlin", "make", "markdown", "markdown_inline", "promql", "proto", "sql", "toml", "tsv", "vim", "xml" },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
