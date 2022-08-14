local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({
		'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path
	})
	vim.api.nvim_command 'packadd packer.nvim'
end

return require('packer').startup (function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    -- Color scheme
    use{
        "folke/tokyonight.nvim",
        config = function()
            require("gdeschuy.plugins.tokyonight").init()
        end
    }

    -- Git
    use {
        "TimUntersberger/neogit", 
        requires = {
            "nvim-lua/plenary.nvim",
            "sindrets/diffview.nvim"
        },
        config = function()
            require("gdeschuy.plugins.neogit").init()
        end
    }

    -- Telescope
    use { "nvim-telescope/telescope.nvim", requires = "nvim-lua/plenary.nvim" }

    -- Undo tree
    use("mbbill/undotree")

end)
