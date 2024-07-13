function ColorMyPencils(color)
	color = color or "everforest"
	-- color = color or "nord"
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
