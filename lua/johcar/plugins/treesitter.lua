return {
   'nvim-treesitter/nvim-treesitter',
   build = ':TSUpdate',
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {"javascript", "c", "cpp", "lua", "rust", "bash", "go", "yaml", "toml"},
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        })
    end
}
