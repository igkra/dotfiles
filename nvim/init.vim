set encoding=utf-8

packadd minpac

call minpac#init()
call minpac#add('Shougo/deoplete.nvim')
call minpac#add('autozimu/LanguageClient-neovim')
call minpac#add('machakann/vim-highlightedyank')
call minpac#add('kana/vim-textobj-user')
call minpac#add('nelstrom/vim-textobj-rubyblock')
call minpac#add('skwp/greplace.vim')
call minpac#add('klen/python-mode')

"Group dependencies, vim-snippets depends on ultisnips
call minpac#add('SirVer/ultisnips')
call minpac#add('honza/vim-snippets')
call minpac#add('epilande/vim-react-snippets',{'type': 'opt'})

"COMMON
"call minpac#add('neomake/neomake')
call minpac#add('w0rp/ale')
call minpac#add('tpope/vim-surround')
call minpac#add('mattn/emmet-vim')
call minpac#add('editorconfig/editorconfig-vim')
call minpac#add('christoomey/vim-tmux-navigator')

"System plug
call minpac#add('scrooloose/nerdtree')
call minpac#add('scrooloose/nerdcommenter')
call minpac#add('tpope/vim-endwise')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('itchyny/lightline.vim')

"call minpac#ad(in outside ~/.vim/plugged with post-update hook
call minpac#add('junegunn/fzf')
call minpac#add('junegunn/fzf.vim')
call minpac#add('tpope/vim-fugitive')

"PHP
call minpac#add('stanangeloff/php.vim', {'type': 'opt'})

"RUBY
call minpac#add('vim-ruby/vim-ruby')
call minpac#add('tpope/vim-rails')
call minpac#add('tpope/vim-rbenv')
call minpac#add('tpope/vim-bundler')
call minpac#add('rdolgushin/groovy.vim', {'type': 'opt'})

"JAVASCRIPT
call minpac#add('pangloss/vim-javascript')
call minpac#add('moll/vim-node')
call minpac#add('posva/vim-vue', {'type': 'opt'})
call minpac#add('mxw/vim-jsx', {'type': 'opt'})

"COMPILED
call minpac#add('rust-lang/rust.vim')
call minpac#add('elixir-lang/vim-elixir', {'type': 'opt'})

"GOLANG
call minpac#add('nsf/gocode')
call minpac#add('fatih/vim-go')

"Colors
call minpac#add('morhetz/gruvbox')
call minpac#add('endel/vim-github-colorscheme')
call minpac#add('gorodinskiy/vim-coloresque')
call minpac#add('tpope/vim-repeat')
call minpac#add('junegunn/goyo.vim')
call minpac#add('HerringtonDarkholme/yats.vim')
call minpac#add('mhartington/nvim-typescript')

"match it with methods
runtime macros/matchit.vim

source ~/dotfiles/nvim/base_settings.vim
source ~/dotfiles/nvim/completion_settings.vim
source ~/dotfiles/nvim/lint_settings.vim
source ~/dotfiles/nvim/lightline_settings.vim
source ~/dotfiles/nvim/fzf_settings.vim
source ~/dotfiles/nvim/search_settings.vim

"minpac commands:
command! PlugUpdate call minpac#update()
command! PlugClean call minpac#clean()

autocmd BufWritePost * if &diff == 1 | colorscheme github | endif
