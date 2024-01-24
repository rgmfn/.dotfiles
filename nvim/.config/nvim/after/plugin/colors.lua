function ColorMyPencils(color)
	color = color or "rose-pine"
	-- color = color or "nord"
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
