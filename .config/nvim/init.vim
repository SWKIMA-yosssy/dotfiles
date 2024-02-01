set number
"[FORNVIMMER]set smartindent
set matchtime=1
set ignorecase
set incsearch
set laststatus=2
set statusline=%F%m%w\ %<%=[FMT=%{&ff}](%Y)
set completeopt=menuone,noinsert
"補完表示時のEnterで改行しない
"[FORNVIMMER]inoremap <expr><CR> pumvisible() ? "<C-y>" : "<CR>"

syntax on
colorscheme koehler
"ファイルタイプ検出をオン
"[FORNVIMMER]filetype on
"[FORNVIMMER]augroup vimrc
"[FORNVIMMER] 	 autocmd!

	"if filetype is C/C++/Java cindent on
"[FORNVIMMER]	 autocmd FileType c,cpp,java setl cindent
"[FORNVIMMER]	 autocmd FileType c,cpp,java setl expandtab tabstop=4 shiftwidth=4 softtabstop=4 shiftround
"[FORNVIMMER]augroup END

call plug#begin()
"[FORNVIMMER]Plug 'https://github.com/preservim/nerdtree'
"[FORNVIMMER]Plug 'https://github.com/Shougo/unite.vim'
"[FORNVIMMER]Plug 'Yggdroot/indentLine'
Plug 'itchyny/lightline.vim'

" ddc.vim本体
"[FORNVIMMER]Plug 'Shougo/ddc.vim'
"[FORNVIMMER]Plug 'vim-denops/denops.vim'
"[FORNVIMMER]Plug 'Shougo/ddc-source-around'
"[FORNVIMMER]Plug 'Shougo/ddc-ui-native'
"[FORNVIMMER]Plug 'Shougo/ddc-matcher_head'
" AI tool Codeium installation
"[FORNVIMMER]Plug 'Exafunction/codeium.vim', { 'branch': 'main' }
call plug#end()
"codeium をデフォルトでオフ
"[FORNVIMMER]let g:codeium_enabled = v:false

"使いたいUIの設定
"[FORNVIMMER]call ddc#custom#patch_global('ui', 'native')
" 使いたいsourceを指定する
"[FORNVIMMER]call ddc#custom#patch_global('sources', ['around'])

" sourceOptionsのmatchersにfilter指定することで、候補の一覧を制御できる
"[FORNVIMMER]call ddc#custom#patch_global('sourceOptions', {
"[FORNVIMMER]    \ '_': {
"[FORNVIMMER]    \     'matchers': ['matcher_head'],
"[FORNVIMMER]    \ }})
"ddc.vimの機能を有効にする
"[FORNVIMMER]call ddc#enable()

" NERDTree settings below------------------------------
" 注：このNERDTreeのセクションは一番最後にこの形で書かないと
" :E492 Not an editor comand :NERDTree
" というエラーが出てしまうので必ず最後にこのセクションを据えること。
" call plug#begin()
" Plug 'https://github.com/preservim/nerdtree'
" call plug#end()
" Start NERDTree and leave the cursor in it.

"[FORNVIMMER]nnoremap <C-t> :NERDTreeToggle<CR>

" NERDTree settings end-------------------------------

