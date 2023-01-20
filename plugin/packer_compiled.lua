-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\Isaac\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\Isaac\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\Isaac\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\Isaac\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\Isaac\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["ack.vim"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\ack.vim",
    url = "https://github.com/mileszs/ack.vim"
  },
  ["andromeda.vim"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\andromeda.vim",
    url = "https://github.com/safv12/andromeda.vim"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["ctrlp.vim"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\ctrlp.vim",
    url = "https://github.com/kien/ctrlp.vim"
  },
  ["ctrlsf.vim"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\ctrlsf.vim",
    url = "https://github.com/dyng/ctrlsf.vim"
  },
  edge = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\edge",
    url = "https://github.com/sainnhe/edge"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  fzf = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\material.nvim",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  nerdcommenter = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nerdcommenter",
    url = "https://github.com/preservim/nerdcommenter"
  },
  nerdtree = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nerdtree",
    url = "https://github.com/preservim/nerdtree"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.vim"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\onedark.vim",
    url = "https://github.com/joshdick/onedark.vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["php.vim"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\php.vim",
    url = "https://github.com/StanAngeloff/php.vim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  sonokai = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\sonokai",
    url = "https://github.com/sainnhe/sonokai"
  },
  ["startup.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\startup.nvim",
    url = "https://github.com/startup-nvim/startup.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["twig.vim"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\twig.vim",
    url = "https://github.com/nelsyeung/twig.vim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-airline-themes",
    url = "https://github.com/vim-airline/vim-airline-themes"
  },
  ["vim-atom-dark"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-atom-dark",
    url = "https://github.com/gosukiwi/vim-atom-dark"
  },
  ["vim-convert-color-to"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-convert-color-to",
    url = "https://github.com/amadeus/vim-convert-color-to"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-grepper"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-grepper",
    url = "https://github.com/mhinz/vim-grepper"
  },
  ["vim-javascript"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-javascript",
    url = "https://github.com/pangloss/vim-javascript"
  },
  ["vim-jsx"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-jsx",
    url = "https://github.com/mxw/vim-jsx"
  },
  ["vim-one"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-one",
    url = "https://github.com/rakr/vim-one"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-transparent"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-transparent",
    url = "https://github.com/tribela/vim-transparent"
  },
  ["wordpress.vim"] = {
    loaded = true,
    path = "C:\\Users\\Isaac\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\wordpress.vim",
    url = "https://github.com/dsawardekar/wordpress.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: startup.nvim
time([[Config for startup.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "startup.nvim")
time([[Config for startup.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
