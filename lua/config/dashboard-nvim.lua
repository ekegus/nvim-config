local M = {}

function M.setup()
	vim.cmd(
		[[
        let g:dashboard_default_executive ='telescope'
        let g:dashboard_custom_footer = ['']
        let g:dashboard_custom_header =<< EOF
              /\          /\          /\
           /\//\\/\    /\//\\/\    /\//\\/\
        /\//\\\///\\/\//\\\///\\/\//\\\///\\/\
       //\\\//\/\\///\\\//\/\\///\\\//\/\\///\\
       \\//\/                            \/\\//
        \/                                  \/
        /\                                  /\
       //\\  Neovim IDE with LSP and DAP   //\\
       \\//                                \\//
        \/                                  \/
        /\                                  /\
       //\\/\                            /\//\\
       \\///\\/\//\\\///\\/\//\\\///\\/\//\\\//
        \/\\///\\\//\/\\///\\\//\/\\///\\\//\/
            \/\\//\/    \/\\//\/    \/\\//\/
               \/          \/          \/
EOF
        let g:dashboard_custom_shortcut = {'last_session': '<Leader>ls', 'find_history': '<Leader> fh','find_file': '<Leader> ff', 'new_file': '<Leader>fn', 'change_colorscheme' : '<Leader>cc', 'find_word': '<Leader>fw', 'book_marks': '<Leader>fm', }
    ]],
		false
	)
end

return M
