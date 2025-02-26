vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({
		"rose-pine/neovim",
		as = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end
	})

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')


	use('kyazdani42/nvim-tree.lua')
	use('nvim-tree/nvim-web-devicons')

	use('voldikss/vim-floaterm')

	use {
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	use {
		'L3MON4D3/LuaSnip',
		requires = { 'rafamadriz/friendly-snippets' },
		config = function()
			require("luasnip.loaders.from_vscode").lazy_load()
		end
	} 


	use {
		'akinsho/bufferline.nvim',
		requires = 'kyazdani42/nvim-web-devicons', 
		config = function()
			require('bufferline').setup {
				options = {
					numbers = "none", 
					close_command = "bdelete! %d", 
					right_mouse_command = "bdelete! %d", 
					left_mouse_command = "buffer %d", 
					middle_mouse_command = nil, 
					buffer_close_icon = ':)', 
					modified_icon = '●', 
					close_icon = '', 
					left_trunc_marker = '', 
					right_trunc_marker = '', 
					max_name_length = 30, 
					max_prefix_length = 15, 
					tab_size = 18, 
					diagnostics = false, 
					offsets = {
						{
							filetype = "NvimTree", 
							text = "Explorer", 
							text_align = "left", 
							padding = 1, 
						}
					},
					show_buffer_icons = true, 
					show_buffer_close_icons = true, 
					show_tab_indicators = true, 
					show_duplicate_prefix = false, 
					persist_buffer_sort = true, 
					separator_style = "thin", 
					enforce_regular_tabs = true, 
					always_show_bufferline = true, 
					sort_by = 'id', 
				}
			}
		end
	}
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true } 
	}


end)
