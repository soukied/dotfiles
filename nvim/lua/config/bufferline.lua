local ok, bufline = pcall(require, 'bufferline')
if not ok then return end

bufline.setup({
	options = {
		always_show_bufferline = false
	}
})
