return function(_module)
	local loaded, _mod = pcall(require, _module)
	if loaded then
		return _mod
	end
end
