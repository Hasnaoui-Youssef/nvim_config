return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup {
	    ensure_installed = { "c", "lua", "dart", "rust","vim","vimdoc", "query", "javascript", "typescript", "tsx", "python" , "markdown", "zig", "go", "vhdl"},
        highlight = { enable = true, },
      }

      local treesitter_parser_config = require("nvim-treesitter.parsers").get_parser_configs()
        treesitter_parser_config.lua = {
          install_info = {
            url = "https://github.com/tree-sitter-grammars/tree-sitter-lua",
            files = {"src/parser.c", "src/scanner.c"},
            branch = "main",
         }
     }

    end
}
