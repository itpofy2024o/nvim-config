vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

	use {
  		'nvim-telescope/telescope.nvim', tag = '0.1.8',
  		requires = { {'nvim-lua/plenary.nvim'} }
	}
	
	use { "catppuccin/nvim", as = "catppuccin" }
	
	use({
        	"xiyaowong/nvim-transparent",
        	config = function()
           		require("transparent").setup({
                		enable = true,
                		extra_groups = {
                    			"BufferLineTabClose",
                    			"BufferlineBufferSelected",
                    			"BufferLineFill",
                    			"BufferLineBackground",
                    			"BufferLineSeparator",
                    			"BufferLineIndicatorSelected",
                		},
                		exclude = {},
            		})
        	end,
    	})
end)
