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
    use {
        "folke/tokyonight.nvim",
        config = function()
            require("gdeschuy.plugins.tokyonight").init()
        end
    }

    -- Devicons
    use {
        "kyazdani42/nvim-web-devicons",
        config = function()
            require("gdeschuy.plugins.devicons").init()
        end
    }

    -- Diffview
    use {
        "sindrets/diffview.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
            "kyazdani142/nvim-web-devicons"
        },
        config = function()
            require("gdeschuy.plugins.diffview").init()
        end
    }

    -- Impatient
    use("lewis6991/impatient.nvim")

    -- Lualine
    use {
        "nvim-lualine/lualine.nvim",
        requires = { 
            "kyazdani42/nvim-web-devicons", opt = true 
        },
        config = function ()
            require("gdeschuy.plugins.lualine").init()
        end
    }

    -- Telescope
    use {
        "nvim-telescope/telescope.nvim",
        requires = "nvim-lua/plenary.nvim" 
    }

    -- Harpoon
    use {
        "ThePrimeagen/harpoon",
        requires = "nvim-lua/plenary.nvim"
    }

    -- Undotree
    use("mbbill/undotree")

end)
