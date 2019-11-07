" ���̃A�v���ƃR�s�y�\��
set clipboard+=unnamed
" �s�ԍ��\��
set number
set ruler
" �o�b�N�A�b�v�Ȃǂ̗]�v�ȃt�@�C�������Ȃ�
set noundofile
set noswapfile
set nobackup
" UTF-8
set fenc=utf-8
" ���������͎��ɑΉ����邩������\��
set showmatch
" �����񂪏������̎��召�̋�ʂ��Ȃ���
set ignorecase
" ������ɑ啶��������Α召�̋�ʂ���
set smartcase
" ��������͒��ɏ����q�b�g������
set incsearch
" ��������n�C���C�g�\��
set hlsearch
nnoremap <Esc><Esc> :noh<CR>
" �G���[�\�����Ƀr�[�v����炳�Ȃ�
set noerrorbells
set visualbell t_vb=
" �܂����s���Ă��Ȃ��R�}���h��\�� 
set showcmd
" tab�𔼊p�X�y�[�X��
set expandtab
" indent width
set shiftwidth=2
" tab width
set softtabstop=2
" tab �̕\����
set tabstop=2
" y�ŃR�s�[���N���b�v�{�[�h�ɓ����
set guioptions+=a
" ���s���̖����ɍ��킹�ăC���f���g
set smartindent

call plug#begin('~/.vim/plugged')
"" vimtex
Plug 'lervag/vimtex'
let g:vimtex_compiler_latexmk = {'background': 1,'continuous': 1,'options': [ ]}
let g:vimtex_view_general_viewer = 'sumatrapdf'
let g:vimtex_view_general_options  = '-reuse-instance -forward-search @tex @line @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'
let g:vimtex_compiler_prigname = "gvim"
let g:vimtex_fold_enabled = 1
let g:vimtex_quickfix_open_on_warning = 0
"�����I�ɃR���p�C������ݒ�
function! s:previewTex() range
let l:tmp = @@
silent normal gvy
let l:selected = split(@@, "\n")
let @@ = l:tmp
let l:template1 = ["\\documentclass{ltjsarticle}",
      \"\\input{C:/Users/akira/Documents/tex/luamacro.tex}",
\"\\begin{document}"]
let l:template2 = ["\\end{document}"]
let l:output_file = "preview.tex"
call writefile(extend(extend(l:template1, l:selected), template2),l:output_file)
call system("latexmk -lualatex preview.tex")
call system("sumatrapdf preview.pdf")
endfunction
autocmd FileType tex
\ | vnoremap <buffer> <localleader>la :call <SID>previewTex()<CR>
"
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
" Plug 'deton/jasegment.vim'
" let g:jasegment#highlight = 2
"" easy-motion
Plug 'easymotion/vim-easymotion'
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1
nmap <Leader>j <Plug>(easymotion-j)
nmap <Leader>k <Plug>(easymotion-k)
nmap s <Plug>(easymotion-s2)
nmap <Leader>w <Plug>(easymotion-bd-w)
"Plug 'joshdick/onedark.vim'
"" color scheme
Plug 'w0ng/vim-hybrid'
"" nerdtree
Plug 'scrooloose/nerdtree'
nnoremap <silent><C-n> :NERDTreeToggle<CR>
" Plug 'Shougo/deoplete.nvim'
" Plug 'roxma/nvim-yarp'
" Plug 'roxma/vim-hug-neovim-rpc'
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#auto_complete_delay=0
" let g:deoplete#auto_complete_start_length=1
" call deoplete#custom#var('omni', 'input_patterns', {
"         \ 'tex': g:vimtex#re#deoplete
"         \})
Plug 'tpope/vim-repeat'
call plug#end()

"" �L�[�}�b�v�ύX
inoremap <C-e> <Esc>$a
inoremap <C-a> <Esc>^a
noremap <C-e> <Esc>$a
noremap <C-a> <Esc>^a
nnoremap <CR> i<Enter><Esc>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap \equ \begin{equation}<Enter>
inoremap \ali \begin{align}<Enter>
inoremap \fra \frac{}{}<Left><Left><Left>
inoremap \cfr \cfrac{}{}<Left><Left><Left>
inoremap \sqr \sqrt{}<Left>
inoremap \cap \caption{}<Left>
inoremap \lab \label{}<Left>
inoremap \lin \linewidth
inoremap \dis \displaystyle
inoremap \hsp \hspace{}<Left>
inoremap $ $$<Left>
inoremap \ref \ref{
inoremap \ere \eqr\eqref{eq:
inoremap \fre \figr\ref{fig:
inoremap \tre \tabr\ref{tab:
inoremap \ffr ,~\ref{fig:
inoremap \ttr ,~\ref{tab:
inoremap \eer ,~\eqref{eq:
inoremap \blw \blw{}<Left>
inoremap \abv \abv{}<Left>
inoremap \not \notag<Space>\\<Enter>
inoremap \si \SI{}{}<Left><Left><Left>
inoremap \col \coloneqq
inoremap \cel \degreeCelsius
inoremap \neq \simeq
imap \cal \lcalc{\%}{}<Esc>2ha
inoremap \lua \begin{luacode}<Enter>
inoremap \ss \si{}<Left>
inoremap <C-v> <C-r>*
