set number
set smartindent
set matchtime=1
set ignorecase
set incsearch
set laststatus=2
set statusline=%F%m%w\ %<%=[FMT=%{&ff}](%Y)
set completeopt=menuone,noinsert
"補完表示時のEnterで改行しない
inoremap <expr><CR> pumvisible() ? "<C-y>" : "<CR>"

syntax on
colorscheme koehler
"ファイルタイプ検出をオン
filetype on
augroup vimrc
	autocmd!

	"if filetype is C/C++/Java cindent on
	autocmd FileType c,cpp,java setl cindent
	autocmd FileType c,cpp,java setl expandtab tabstop=4 shiftwidth=4 softtabstop=4 shiftround
augroup END

call plug#begin()
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/Shougo/unite.vim'
Plug 'Yggdroot/indentLine'
Plug 'itchyny/lightline.vim'

" ddc.vim本体
Plug 'Shougo/ddc.vim'
Plug 'vim-denops/denops.vim'
Plug 'Shougo/ddc-source-around'
Plug 'Shougo/ddc-ui-native'
Plug 'Shougo/ddc-matcher_head'
" AI tool Codeium installation
Plug 'Exafunction/codeium.vim', { 'branch': 'main' }
call plug#end()
"codeium をデフォルトでオフ
let g:codeium_enabled = v:false

"使いたいUIの設定
call ddc#custom#patch_global('ui', 'native')
" 使いたいsourceを指定する
call ddc#custom#patch_global('sources', ['around'])

" sourceOptionsのmatchersにfilter指定することで、候補の一覧を制御できる
call ddc#custom#patch_global('sourceOptions', {
    \ '_': {
    \     'matchers': ['matcher_head'],
    \ }})
"ddc.vimの機能を有効にする
call ddc#enable()

" NERDTree settings below------------------------------
" 注：このNERDTreeのセクションは一番最後にこの形で書かないと
" :E492 Not an editor comand :NERDTree
" というエラーが出てしまうので必ず最後にこのセクションを据えること。
" call plug#begin()
" Plug 'https://github.com/preservim/nerdtree'
" call plug#end()
" Start NERDTree and leave the cursor in it.

nnoremap <C-t> :NERDTreeToggle<CR>

" NERDTree settings end-------------------------------

