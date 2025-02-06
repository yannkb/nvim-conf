if true then
  return {}
end

return {
  "goolord/alpha-nvim",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    local logo = [[
	 ________  _____  ______   __    __  ________  ________ 
	|        \|      \ /      \ |  \  /  \|        \|        \
	 \$$$$$$$$ \$$$$$$|  $$$$$$\| $$ /  $$| $$$$$$$$| $$$$$$$$
	   | $$     | $$  | $$   \$$| $$/  $$ | $$__    | $$__    
	   | $$     | $$  | $$      | $$  $$  | $$  \   | $$  \   
	   | $$     | $$  | $$   __ | $$$$$\  | $$$$$   | $$$$$   
	   | $$    _| $$_ | $$__/  \| $$ \$$\ | $$_____ | $$_____ 
	   | $$   |   $$ \ \$$    $$| $$  \$$\| $$     \| $$     \
	    \$$    \$$$$$$  \$$$$$$  \$$   \$$ \$$$$$$$$ \$$$$$$$$
	    
    ]]

    dashboard.section.header.val = vim.split(logo, "\n", { trimempty = true })

    alpha.setup(dashboard.opts)
  end,
}
