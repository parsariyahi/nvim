set path+=**

" Nice menu when typing `:find *.py`"
set wildmode=longest,list,full
set wildmenu

" ignore some files"
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/.git/*

filetype plugin indent on
syntax on
set nocompatible            " disable compatibility to old-time vi"
set showmatch               " show matching "
set ignorecase              " case insensitive "
set mouse=v                 " middle-click paste with "
set hlsearch                " highlight search "
set incsearch               " incremental search"
set tabstop=4               " number of columns occupied by a tab "
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing"
set expandtab               " converts tabs to white space"
set shiftwidth=4            " width for autoindents"
set autoindent              " indent a new line the same amount as the line just typed"
set wildmode=longest,list   " get bash-like tab completions"
filetype plugin indent on   "allow auto-indenting depending on file type"
set mouse=a                 " enable mouse click"
set clipboard=unnamedplus   " using system clipboard"
set t_Co=256
set ttyfast                 " Speed up scrolling in Vim"
" set spell                 " enable spell check (may need to download language package)"
" set noswapfile            " disable creating swap file"
" set backupdir=~/.cache/vim " Directory to store backup files."
set relativenumber
set timeoutlen=500

call plug#begin('~/.vim/plugged')

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

Plug 'arcticicestudio/nord-vim'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" lsp plugins"
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'


Plug 'ThePrimeagen/harpoon'

Plug 'chrisbra/csv.vim'

"show key mapping"
Plug 'folke/which-key.nvim'

call plug#end()


let mapleader = " "







lua <<EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    mapping = {
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it. 
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['pyright'].setup {
    capabilities = capabilities
  }
EOF

colorscheme nord

lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }


nnoremap <leader>ha :lua require("harpoon.mark").add_file()<CR>
nnoremap <leader>h :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <leader>hn :lua require("harpoon.ui").nav_next()<CR>
nnoremap <leader>hb :lua require("harpoon.ui").nav_prev()<CR>

"for writing and quiting the file"
nnoremap <leader>w :w!<CR>
nnoremap <leader>q :q!<CR>

"file explorer"
nnoremap <leader>e :Lex<CR>

"create new file "
nnoremap <leader>nf :e %:p:h/

"for source the init file"
nnoremap <Leader><CR> :source ~/.config/nvim/init.vim<CR>

"telescope"
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" move line or visually selected block - alt+j/k "
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" move split panes to left/bottom/top/right "
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L

" switch between splits "
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>



" resize verticaly "

nnoremap <Leader>= :vertical resize +10<CR>
nnoremap <Leader>- :vertical resize -10<CR>


" for vertical split "
nnoremap <leader>sp :vsplit<CR>
