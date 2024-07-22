function ColorMyNvim(color)
	color = color or "monochrome"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
	vim.api.nvim_set_hl(0, "LineNr", { fg = "White" })
	vim.api.nvim_set_hl(0, "StatusLine", { bg = "#334455" })
	vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "#333333" })
	-- vim.api.nvim_set_hl(0, "FlaotBorder", { bg = "none" })
    
end

ColorMyNvim()
