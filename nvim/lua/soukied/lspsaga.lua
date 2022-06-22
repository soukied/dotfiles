local saga = require('lspsaga')
local opts = {
	error_sign = '',
	warn_sign = '',
	infor_sign = '',
	hint_sign = '',
	code_action_prompt = ' ',
}
saga.init_lsp_saga {
	error_sign = '',
	warn_sign = '',
	infor_sign = '',
	hint_sign = '',
	border_style = "round",
}
