let g:python3_host_prog = 'C:\Users\akira\AppData\Local\Programs\Python\Python37\python.exe'
" 他のアプリとコピペ可能に
set clipboard+=unnamed
" 行番号表示
set number
set ruler
" バックアップなどの余計なファイルを作らない
set noundofile
set noswapfile
set nobackup
" UTF-8
set encoding=utf-8
set fenc=utf-8
" かっこ入力時に対応するかっこを表示
set showmatch
" 検索列が小文字の時大小の区別をなくす
set ignorecase
" 検索列に大文字があれば大小の区別あり
set smartcase
" 検索列入力中に順次ヒットさせる
set incsearch
" 検索語をハイライト表示
set hlsearch
nnoremap <Esc><Esc> :noh<CR>
" エラー表示時にビープ音を鳴らさない
set noerrorbells
set visualbell t_vb=
" また実行していないコマンドを表示 
set showcmd
" tabを半角スペースに
set expandtab
" indent width
set shiftwidth=2
" tab width
set softtabstop=2
" tab の表示幅
set tabstop=2
" yでコピー時クリップボードに入れる
set guioptions+=a
" 改行時の末尾に合わせてインデント
set smartindent


"" dein.vim
"if &compatible
"    set nocompatible
"endif
"" Add the dein installation directory into runtimepath
"set runtimepath+=~/.cache/dein.vim
"
"if dein#load_state('~/.cache/dein')
"  call dein#begin('~/.cache/dein')
"  call dein#load_toml('~/.config/nvim/dein.toml',{'lazy':0})
"  call dein#load_toml('~/.config/nvim/dein_lazy.toml',{'lazy':1})
"  call dein#end()
"  call dein#save_state()
"endif
"" 不足プラグインの自動インストール
"if has('vim_starting') && dein#check_install()
"  call dein#install()
"endif

"call plug#begin('~/.vim/plugged')
""" vimtex
"Plug 'lervag/vimtex'
"let g:vimtex_compiler_latexmk = {'background': 1,'continuous': 1,'options': [ ]}
"let g:vimtex_view_general_viewer = 'sumatrapdf'
"let g:vimtex_view_general_options  = '-reuse-instance -forward-search @tex @line @pdf'
"let g:vimtex_view_general_options_latexmk = '-reuse-instance'
"let g:vimtex_compiler_progname = "gvim"
"let g:vimtex_quickfix_open_on_warning = 0
""部分的にコンパイルする設定
"function! s:previewTex() range
"let l:tmp = @@
"silent normal gvy
"let l:selected = split(@@, "\n")
"let @@ = l:tmp
"let l:template1 = ["\\documentclass{ltjsarticle}",
"      \"\\input{C:/Users/akira/Documents/tex/luamacro.tex}",
"\"\\begin{document}"]
"let l:template2 = ["\\end{document}"]
"let l:output_file = "preview.tex"
"call writefile(extend(extend(l:template1, l:selected), template2),l:output_file)
"call system("latexmk -lualatex preview.tex")
"call system("sumatrapdf preview.pdf")
"endfunction
"autocmd FileType tex
"\ | vnoremap <buffer> <localleader>la :call <SID>previewTex()<CR>
""
"Plug 'tpope/vim-surround'
"Plug 'tpope/vim-commentary'
""" easy-motion
"Plug 'easymotion/vim-easymotion'
"let g:EasyMotion_do_mapping = 0 " Disable default mappings
"let g:EasyMotion_smartcase = 1
"nmap <Leader>j <Plug>(easymotion-j)
"nmap <Leader>k <Plug>(easymotion-k)
"nmap s <Plug>(easymotion-s2)
"nmap <Leader>w <Plug>(easymotion-bd-w)
""Plug 'joshdick/onedark.vim'
""" color scheme
"Plug 'w0ng/vim-hybrid'
""" nerdtree
"Plug 'scrooloose/nerdtree'
"nnoremap <silent><C-n> :NERDTreeToggle<CR>
"if has('nvim')
"  Plug 'Shougo/deoplete.nvim', { 'do': ':RemotePlugins' }
"else
"  Plug 'Shougo/deoplete.nvim'
"  Plug 'roxma/nvim-yarp'
"  Plug 'roxma/vim-hug-neovim-rpc'
"endif

"Plug 'Shougo/neosnippet.vim'
"Plug 'Shougo/neosnippet-snippets'
""
"" let g:deoplete#auto_complete_delay=0
"" let g:deoplete#auto_complete_start_length=1
"" call deoplete#custom#var('omni', 'input_patterns', {
""         \ 'tex': g:vimtex#re#deoplete
""         \})
"Plug 'tpope/vim-repeat'
"call plug#end()
"call deoplete#custom#option('num_processes',1)
"let g:deoplete#enable_at_startup = 1
"call deoplete#custom#option({
"\ 'smart_case': v:true,
"\ 'camel_case': v:true,
"\ 'candidate_marks': ['A', 'S', 'D', 'F', 'G'],
"\ 'min_pattern_length': 1
"\ })
"inoremap <expr>A       pumvisible() ?
"\ deoplete#insert_candidate(0) : 'A'
"inoremap <expr>S       pumvisible() ?
"\ deoplete#insert_candidate(1) : 'S'
"inoremap <expr>D       pumvisible() ?
"\ deoplete#insert_candidate(2) : 'D'
"inoremap <expr>F       pumvisible() ?
"\ deoplete#insert_candidate(3) : 'F'
"inoremap <expr>G       pumvisible() ?
"\ deoplete#insert_candidate(4) : 'G'
"" Plugin key-mappings.
" " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
" imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)

"  " SuperTab like snippets behavior.
"  " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
" imap <expr><TAB>
"  \ pumvisible() ? "\<C-n>" :
"  \ neosnippet#expandable_or_jumpable() ?
"  \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

"filetype plugin indent on
"syntax enable
"colorscheme hybrid
"" キーマップ変更
inoremap <C-e> <Esc>$a
inoremap <C-a> <Esc>^a
noremap <C-e> <Esc>$a
noremap <C-a> <Esc>^a
nnoremap <CR> i<Enter><Esc>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-v> <C-r>*
