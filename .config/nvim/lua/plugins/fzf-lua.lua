return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "echasnovski/mini.icons" },
	opts = {
		"default-title", -- Important as we lose the prompt
		keymap = {
			fzf = {
				true,
				["h"] = "abort",
				["j"] = "down",
				["k"] = "up",
				["l"] = "accept",
				["i"] = "unbind(h)+unbind(j)+unbind(k)+unbind(l)+unbind(i)+change-prompt(> )",
				["esc"] = 'transform:case "$FZF_PROMPT" in\n'
					.. '*NORMAL*) echo abort;;\n'
					.. '*) echo "change-prompt(NORMAL - PRESS \'I\' FOR INSERT MODE)'
					.. '+rebind(h)+rebind(j)+rebind(k)+rebind(l)+rebind(i)";;'
					.. '\nesac',
				["start"] = "change-prompt(NORMAL - PRESS 'I' FOR INSERT MODE)"
			},
		}
	}, 
	keys={
		{ 
			"<leader>ff", function() 
				require('fzf-lua').files() 
			end,
			desc="Find Files in current term directory"
		},
		{ 
			"<leader>fg", function() 
				require('fzf-lua').live_grep() 
			end,
			desc="Find by grepping current term directory"
		},
		{ 
			"<leader>fc", function() 
				require('fzf-lua').files({cwd=vim.fn.stdpath("config")}) 
			end,
			desc="Find neovim config"
		},
		{ 
			"<leader>fb", function() 
				require('fzf-lua').builtin() 
			end,
			desc="Find neovim config"
		},
		{
            "<leader>fo",
            function()
                require("fzf-lua").oldfiles()
            end,
            desc = "[F]ind [O]ld Files",
        },
        {
            "<leader><leader>",
            function()
                require("fzf-lua").buffers()
            end,
            desc = "[,] Find existing buffers",
        },
        {
            "<leader>/",
            function()
                require("fzf-lua").lgrep_curbuf()
            end,
            desc = "[/] Live grep the current buffer",
        },
	}

}
