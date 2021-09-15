" Vim color file
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "neri"

" links
" https://linuxhint.com/vim_syntax_highlighting/

" color start
"

let dark_or_light="dark"
" let dark_or_light="light"

hi NeriYellow ctermfg=03 ctermbg=NONE cterm=NONE guifg=#808000 guibg=NONE gui=NONE
"yellow. 03 is a little darker than 220
let yellow03=03

highlight NeriPurple ctermfg=141 ctermbg=NONE cterm=NONE guifg=#af87ff guibg=NONE gui=NONE
let purple141=141

" green/yellow
hi String ctermfg=186 ctermbg=NONE cterm=NONE guifg=#d7d787 guibg=NONE gui=NONE
let string_color=186

highlight Turquoise term=standout ctermfg=81 guifg=#5fd7ff
let turquoise=81

" highlight white231ffffff term=standout ctermfg=231 guifg=#ffffff cterm=bold gui=bold
let white231ffffff=231

hi NeriGreen ctermfg=148 ctermbg=NONE cterm=NONE guifg=#afd700 guibg=NONE gui=NONE
let neriGreen=148

highlight NeriLightBlue ctermfg=81 ctermbg=NONE cterm=NONE guifg=#5fd7ff guibg=NONE gui=italic
" highlight NeriLightBlue2 ctermfg=153 ctermbg=NONE cterm=NONE guifg=#afd7ff guibg=NONE gui=italic
" highlight NeriLightBlue3 ctermfg=110 ctermbg=NONE cterm=NONE guifg=#87afd7 guibg=NONE gui=italic
highlight NeriLightBlueFn ctermfg=111 ctermbg=NONE cterm=NONE guifg=#87afff guibg=NONE gui=italic
" highlight NeriLightBlue5 ctermfg=63 ctermbg=NONE cterm=NONE guifg=#5f5fff guibg=NONE gui=italic

let orange=208

let key_green=71

let lighter_orange=172

let darkishGreen=30  " strings

let blue=32  
let light_blue=110 " looks good on the dark blue background. but dosnt work well with the blue=31
highlight LightBlue term=standout ctermfg=110 guifg=#87afd7

let gray=246
highlight Gray term=standout ctermfg=246 guifg=#949494
highlight NeriGrayLight term=standout ctermfg=146 guifg=#afafd7
highlight NeriGrayLightBold term=standout ctermfg=146 guifg=#afafd7 cterm=bold gui=bold
" highlight NeriBrownish term=standout ctermfg=137 guifg=#af875f
highlight NeriBrownish term=standout ctermfg=180 guifg=#d7af87
let gray2=235
let graysplitter=238

let key_gray_blue=67
highlight NeriKeyGrayBlue term=standout ctermfg=67 guifg=#5f87af

let black=00
let black2=234
let red=01
let zeroNine=09
let light_green=02
let yellow=226
let comment_green=29
highlight pink_ruby term=standout ctermfg=161 guifg=#d7005f
highlight bright_red term=standout ctermfg=01 guifg=#800000
highlight myorange term=standout ctermfg=172 guifg=#d78700

highlight bright_green term=standout ctermfg=48 guifg=#00ff87
highlight Twelve term=standout ctermfg=12 guifg=#0000ff
highlight green term=standout ctermfg=02 guifg=#008000

highlight White term=standout ctermfg=231 guifg=#ffffff
highlight WhiteBold term=standout ctermfg=231 guifg=#ffffff cterm=bold gui=bold
let white=231
let text_color=white
" colors end


" setting colors start
"
" background and foreground color gray/white
execute "hi Normal ctermfg=231 ctermbg=237 cterm=NONE guifg=#ffffff guibg=#3a3a3a gui=NONE"

if dark_or_light == "light"
	" TODO
  execute "hi Normal ctermfg=237 ctermbg=231 cterm=NONE guifg=#3a3a3a guibg=#ffffff gui=NONE"
" green/yellow
" hi String ctermfg=28 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
" let string_color=28
endif

highlight def link pythonOperator NeriPurple
highlight def link pythonExceptions NeriLightBlue

" syntax match self /self/
" self is set in ~/vim/ftplugin

" highlight def link pythonFunction NeriGreen
highlight def link pythonFunction NeriLightBlue

highlight def link String String


" when line is longer than 80
hi ColorColumn ctermfg=NONE ctermbg=238 cterm=NONE guifg=NONE guibg=#444444 gui=NONE


let pink=13
let lighter_green=114

 let darker_yellow=178
let yellow=11
let light_green2=114


" Conditonal. if else ect.
execute "hi Conditional guifg=#af87ff guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"

" Identifier. var let ect.
exe "hi Identifier guifg=#c679dd guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"


hi IncSearch guifg=#000000 guibg=#ff5fd7 guisp=#ff5fd7 gui=NONE ctermfg=NONE ctermbg=206 cterm=NONE
hi WildMenu guifg=#000000 guibg=#5fd7d7 guisp=#5fd7d7 gui=NONE ctermfg=NONE ctermbg=80 cterm=NONE
hi SignColumn guifg=#808080 guibg=#262626 guisp=#262626 gui=NONE ctermfg=8 ctermbg=235 cterm=NONE

" Comment
execute "hi SpecialComment guifg=#d787d7 guibg=NONE guisp=NONE gui=NONE ctermfg=" . gray "ctermbg=NONE cterm=NONE"
" execute "hi SpecialComment guifg=#d787d7 guibg=NONE guisp=NONE gui=NONE ctermfg=" . comment_green "ctermbg=NONE cterm=NONE"

exe "hi Typedef guifg=#af87ff guibg=NONE guisp=NONE gui=NONE ctermfg=" . yellow03 "ctermbg=NONE cterm=NONE"
exe "hi Title guifg=#af87ff guibg=NONE guisp=NONE gui=NONE ctermfg=" .yellow03 "ctermbg=NONE cterm=NONE"
hi Folded guifg=#8787af guibg=#1c1c1c guisp=#1c1c1c gui=NONE ctermfg=103 ctermbg=234 cterm=NONE
hi PreCondit guifg=#d7d787 guibg=NONE guisp=NONE gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE

" Imports, use
execute "hi Include guifg=#d7d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"

execute "hi Float guifg=#d7d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . light_blue "ctermbg=NONE cterm=NONE"

" non current window horizontal bar
execute "hi StatusLineNC guifg=#000000 guibg=#444444 gui=NONE ctermfg=" . light_blue "ctermbg=" . graysplitter "cterm=NONE"
execute "hi StatusLineNC guifg=#000000 guibg=#444444 gui=NONE ctermfg=" . light_blue "ctermbg=" . graysplitter "cterm=NONE"
" horizontal bar when opening a terminal in vim (:terminal)
execute "hi StatusLineTermNC guifg=#000000 guibg=#444444 gui=NONE ctermfg=" . light_blue "ctermbg=" . graysplitter "cterm=NONE"
execute "hi StatusLineTerm guifg=#000000 guibg=#444444 gui=NONE ctermfg=" . light_blue "ctermbg=" . graysplitter "cterm=NONE"
" current window horizontal bar
execute "hi StatusLine guifg=#ff8700 guibg=#444444 gui=NONE ctermfg=" . orange "ctermbg=" . graysplitter "cterm=NONE"
execute "hi StatusLine guifg=#000000 guibg=#9e9e9e gui=NONE ctermfg=" . neriGreen "ctermbg=" . graysplitter "cterm=NONE"
" highlight def link StatusLine NeriGreen

" The vertical window splitter
execute "hi VertSplit guifg=#444444 guibg=#444444 guisp=#444444 gui=NONE ctermfg=238 ctermbg=" . 236 "cterm=NONE"

"hi NonText guifg=#87afff guibg=#262626 guisp=#262626 gui=NONE ctermfg=111 ctermbg=235 cterm=NONE
execute "hi NonText guifg=#87afff guibg=#262626 guisp=#262626 gui=NONE ctermfg=" . light_blue "ctermbg=NONE cterm=NONE"

hi ErrorMsg guifg=#d75f87 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi Debug guifg=#d787d7 guibg=NONE guisp=NONE gui=NONE ctermfg=226 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=#ff5fd7 guibg=#262626 guisp=#262626 gui=NONE ctermfg=206 ctermbg=235 cterm=NONE

hi SpecialChar guifg=#d787d7 guibg=NONE guisp=NONE gui=NONE ctermfg=226 ctermbg=NONE cterm=NONE

" variables ?
exe "hi StorageClass guifg=#af87ff guibg=NONE guisp=NONE gui=NONE ctermfg=" .white "ctermbg=NONE cterm=NONE"
hi Todo guifg=#5fd7d7 guibg=NONE guisp=NONE gui=NONE ctermfg=80 ctermbg=NONE cterm=NONE

hi Special guifg=#d787d7 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
execute "hi Special guifg=#d787d7 guibg=NONE guisp=NONE gui=NONE ctermfg=" . light_blue "ctermbg=NONE cterm=NONE"

" The line numbers color
execute "hi LineNr guifg=#808080 guibg=#1c1c1c guisp=#1c1c1c gui=NONE ctermfg=" . light_blue  "ctermbg=NONE cterm=NONE"
execute "hi LineNr guifg=#808080 guibg=#1c1c1c guisp=#1c1c1c gui=NONE ctermfg=" . gray  "ctermbg=NONE cterm=NONE"

execute "hi Label guifg=#af87ff guibg=NONE guisp=NONE gui=NONE ctermfg=" . blue  "ctermbg=NONE cterm=NONE"

" Search, /searchword, ?searchword, *, z/. 
exe "hi Search guifg=#ff8700 guibg=NONE guisp=NONE gui=NONE ctermfg=" .zeroNine "ctermbg=NONE cterm=NONE"
execute "hi Delimiter guifg=#d787d7 guibg=NONE guisp=NONE gui=NONE ctermfg=" . string_color "ctermbg=NONE cterm=NONE"

" Statement
execute "hi Statement guifg=#c679dd guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"

hi SpellRare guifg=#87ffaf guibg=NONE guisp=NONE gui=underline ctermfg=121 ctermbg=NONE cterm=underline
" Comments
" execute "hi Comment guifg=#808080 guibg=NONE guisp=NONE gui=NONE ctermfg=" . comment_green "ctermbg=NONE cterm=NONE"
execute "hi Comment guifg=#808080 guibg=NONE guisp=NONE gui=NONE ctermfg=" . gray "ctermbg=NONE cterm=NONE"

hi Character guifg=#d7af87 guibg=NONE guisp=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
execute "hi TabLineSel guifg=#000000 guibg=#9e9e9e guisp=#9e9e9e gui=NONE ctermfg=NONE ctermbg=" . light_blue "cterm=NONE"

" Number
"execute "hi Number guifg=#149c93 guibg=NONE guisp=NONE gui=NONE ctermfg=" . orange "ctermbg=NONE cterm=NONE"
execute "hi Number guifg=#149c93 guibg=NONE guisp=NONE gui=NONE ctermfg=" . yellow03 "ctermbg=NONE cterm=NONE"

" Boolean 
execute "hi Boolean guifg=#d75f87 guibg=NONE guisp=NONE gui=NONE ctermfg=" .purple141  "ctermbg=NONE cterm=NONE"

" Operator
execute "hi Operator guifg=#af87ff guibg=NONE guisp=NONE gui=NONE ctermfg=" . light_blue "ctermbg=NONE cterm=NONE"

hi CursorLine guifg=NONE guibg=#303030 guisp=#303030 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi TabLineFill guifg=#808080 guibg=#1c1c1c guisp=#1c1c1c gui=NONE ctermfg=8 ctermbg=234 cterm=NONE
hi Question guifg=#5fd7d7 guibg=NONE guisp=NONE gui=NONE ctermfg=80 ctermbg=NONE cterm=NONE
hi WarningMsg guifg=#ff5fd7 guibg=NONE guisp=NONE gui=NONE ctermfg=206 ctermbg=NONE cterm=NONE
hi VisualNOS guifg=#e4e4e4 guibg=NONE guisp=NONE gui=underline ctermfg=254 ctermbg=NONE cterm=underline

" diff start
" execute "highlight DiffAdd cterm=NONE ctermfg=" . white "ctermbg=238 gui=none guifg=#ffffff guibg=#444444"
highlight DiffAdd cterm=NONE ctermfg=NONE ctermbg=238 gui=none guifg=NONE guibg=#444444"
highlight DiffDelete cterm=NONE ctermfg=01 ctermbg=238 gui=none guifg=#800000 guibg=#444444
highlight DiffChange cterm=NONE ctermfg=NONE ctermbg=238 gui=NONE guifg=NONE guibg=#444444
highlight DiffText   cterm=NONE ctermfg=NONE ctermbg=236 gui=none guifg=NONE guibg=#303030
" highlight DiffText   cterm=NONE ctermfg=NONE ctermbg=235 gui=none guifg=NONE guibg=#262626
" diff end

hi ModeMsg guifg=#e4e4e4 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi CursorColumn guifg=NONE guibg=#303030 guisp=#303030 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE

" def 
execute "hi Define guifg=#d7d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"

" Functions
execute "hi Function guifg=#a6b2c1 guibg=NONE guisp=NONE gui=NONE ctermfg=" . white "ctermbg=NONE cterm=NONE"

hi FoldColumn guifg=#8787af guibg=#1c1c1c guisp=#1c1c1c gui=NONE ctermfg=103 ctermbg=234 cterm=NONE
execute "hi PreProc guifg=#149c93 guibg=NONE guisp=NONE gui=NONE ctermfg=" . white231ffffff "ctermbg=NONE cterm=NONE"
hi Visual guifg=#e4e4e4 guibg=#585858 guisp=#585858 gui=NONE ctermfg=254 ctermbg=240 cterm=NONE
hi MoreMsg guifg=#87ffaf guibg=NONE guisp=NONE gui=NONE ctermfg=121 ctermbg=NONE cterm=NONE
hi SpellCap guifg=#5fd7d7 guibg=NONE guisp=NONE gui=underline ctermfg=80 ctermbg=NONE cterm=underline

" try, catch ect.
execute "hi Exception guifg=#af87ff guibg=NONE guisp=NONE gui=NONE ctermfg=" .purple141 "ctermbg=NONE cterm=NONE"

" Keywords
" execute "hi Keyword guifg=#c679dd guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"

execute "hi Type guifg=#149c93 guibg=NONE guisp=NONE gui=NONE ctermfg=" . white231ffffff "ctermbg=NONE cterm=NONE cterm=bold gui=bold"
hi Cursor guifg=#000000 guibg=#e4e4e4 guisp=#e4e4e4 gui=NONE ctermfg=NONE ctermbg=254 cterm=NONE
hi SpellLocal guifg=#d7d787 guibg=NONE guisp=NONE gui=underline ctermfg=186 ctermbg=NONE cterm=underline
" > 
exe "hi Error guifg=#d75f87 guibg=NONE guisp=NONE gui=NONE ctermfg=" .  light_blue "ctermbg=NONE cterm=NONE" 

hi PMenu guifg=#c6c6c6 guibg=#1c1c1c guisp=#1c1c1c gui=NONE ctermfg=251 ctermbg=234 cterm=NONE
hi SpecialKey guifg=#87afff guibg=NONE guisp=NONE gui=NONE ctermfg=111 ctermbg=NONE cterm=NONE
 
" Constants
execute "hi Constant guifg=#c679dd guibg=NONE guisp=NONE gui=NONE ctermfg=" . light_blue "ctermbg=NONE cterm=NONE"

hi Tag guifg=#d787d7 guibg=NONE guisp=NONE gui=NONE ctermfg=226 ctermbg=NONE cterm=NONE

" Strings
execute "hi String guifg=#90c378 guibg=NONE guisp=NONE gui=NONE ctermfg=" . string_color "ctermbg=NONE cterm=NONE"

hi PMenuThumb guifg=#262626 guibg=#ff5fd7 guisp=#ff5fd7 gui=NONE ctermfg=235 ctermbg=239 cterm=NONE

" Matching parathesis. closing/opening paranthesis. 46 is light green color
execute "hi MatchParen guifg=#262626 guibg=#ff5fd7 guisp=#ff5fd7 gui=NONE ctermfg=" 46 "ctermbg=" . black "cterm=NONE"

exe "hi Repeat guifg=#af87ff guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"
hi SpellBad guifg=#d75f87 guibg=NONE guisp=NONE gui=underline ctermfg=208 ctermbg=NONE cterm=underline
hi Directory guifg=#d7af87 guibg=NONE guisp=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
exe "hi Structure guifg=#af87ff guibg=NONE guisp=NONE gui=NONE ctermfg=" .yellow03  "ctermbg=NONE cterm=NONE"
hi Macro guifg=#d7d787 guibg=NONE guisp=NONE gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE
hi Underlined guifg=#87afff guibg=NONE guisp=NONE gui=NONE ctermfg=111 ctermbg=NONE cterm=NONE
hi TabLine guifg=#808080 guibg=#1c1c1c guisp=#1c1c1c gui=NONE ctermfg=8 ctermbg=234 cterm=NONE
hi conceal guifg=#c6c6c6 guibg=NONE guisp=NONE gui=NONE ctermfg=251 ctermbg=NONE cterm=NONE
" hi colorcolumn guifg=NONE guibg=#303030 guisp=#303030 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi cursorlinenr guifg=#e4e4e4 guibg=#303030 guisp=#303030 gui=NONE ctermfg=254 ctermbg=236 cterm=NONE


" Code completion menu
execute "hi Pmenu guifg=#a6b2c1 guibg=#1f2029 guisp=#1f2029 gui=NONE ctermfg=" . 231 "ctermbg=" . 238 "cterm=NONE"
" execute "hi Pmenu guifg=#ffffff guibg=#3a3a3a guisp=#3a3a3a gui=NONE ctermfg=" . 231 "ctermbg=" . 237 "cterm=NONE"
" horizontal bar for code completion
" also horizontal bar when using CommandT search functionality
" execute "hi PMenuSel guifg=#000000 guibg=#87afff guisp=#87afff gui=NONE ctermfg=" . orange  "ctermbg=" . gray2 "cterm=NONE"
execute "hi PMenuSel guifg=#000000 guibg=#87afff guisp=#87afff gui=NONE ctermfg=" . orange  "ctermbg=" . 238 "cterm=NONE"



" Haskell
execute "hi VarId guifg=#a6b2c1 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"
execute "hi hsStructure guifg=#a6b2c1 guibg=NONE guisp=NONE gui=NONE ctermfg=" . light_green "ctermbg=NONE cterm=NONE"
" Haskell end



" Ruby 
highlight def link rubyStringDelimiter String
highlight def link rubyInterpolationDelimiter Pink
" highlight def link rubyMethodName Turquoise
highlight def link rubyMethodName NeriGreen
" highlight def link rubyOperator NeriPurple
highlight def link rubyOperator White
highlight def link rubyScopeOperator White
highlight def link rubySuperClassOperator White
highlight def link rubyEigenClassOperator White
highlight def link rubySplatOperator NeriPurple
highlight def link rubyDoubleSplatOperator NeriPurple
" highlight def link rubySymbolDelimiter White
highlight def link rubyDotOperator White
" highlight def link rubySymbol White
highlight def link rubySymbol NeriBrownish
highlight def link rubyPseudoVariable NeriPurple
highlight def link rubyProcOperator NeriPurple
highlight def link rubyLambdaOperator NeriPurple
" highlight def link rubyHelper NeriGreen
highlight def link rubyHelper Turquoise
highlight def link rubyMacro NeriPurple
highlight def link rubyFloat Number
highlight def link rubyAccess NeriPurple
"

highlight some_purple term=standout ctermfg=139 guifg=#c0c0c0
highlight NeriOrange term=standout ctermfg=208 guifg=#ff8700
highlight NeriOrangeBold term=standout ctermfg=208 guifg=#ff8700 cterm=bold gui=bold
highlight NeriOrange2Bold term=standout ctermfg=214 guifg=#ffaf00 cterm=bold gui=bold
highlight NeriOrange2 term=standout ctermfg=214 guifg=#ffaf00

 " highlight def link rubyConstant NeriOrange2
" highlight def link rubyClassName NeriOrange2

" highlight def link rubyCallback NeriOrange
highlight def link rubyCallback NeriOrange2

highlight def link rubyHelper pink_ruby


" Regex colors start
highlight Pink term=standout ctermfg=219 guifg=#ffafff
highlight def link rubyStringEscape Pink

" highlight def link rubyRegexpEscape pink_ruby
highlight def link rubyRegexpEscape Pink
" highlight def link rubyRegexpDelimiter myorange
highlight def link rubyRegexpDelimiter Pink

highlight aaa term=standout ctermfg=40 guifg=#00d700
highlight def link rubyRegexpCharClass Pink

highlight bbb term=standout ctermfg=190 guifg=#d7ff00
highlight def link rubyRegexpAnchor Pink

highlight ccc term=standout ctermfg=05 guifg=#800080
highlight def link rubyRegexpBrackets Pink

highlight ddd term=standout ctermfg=27 guifg=#005fff
highlight def link rubyRegexp Pink

highlight eee term=standout ctermfg=11 guifg=#ffff00
highlight def link rubyRegexpQuantifier Pink
" Regex colors end



" dosnt work. I wanted Constants, that is, uppercase words to be a
" diffenrent color 
" syntax match myConstant /[A-Z]/
" syntax match myConstant2 /\(?!^.*[A-Z]{2,}.*$\)^[A-Za-z]*$/
" just tried with VAR2 and the in my code and had a Constant with that name.
" didn't work either
" syntax match myConstant /VAR2/
" highlight def link myConstant myorange
" highlight def link rubyConstant myorange





" execute "highlight rubyConstant guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . pink_ruby "ctermbg=NONE cterm=NONE"


" dosnt work
" execute "highlight rubyKeywordAsMethod guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"
" execute "highlight rubyClassBlock guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"
" highlight def link rubyMacro some_purple
" dosnt work end


" erb
execute "hi erubyDelimiter guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . yellow "ctermbg=NONE cterm=NONE"
execute "hi rubyViewHelper guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . white "ctermbg=NONE cterm=NONE"
" erb end

" yaml start
highlight def link yamlKeyValueDelimiter White
highlight def link yamlBlockMappingKey NeriBrownish
highlight def link yamlBlockCollectionItemStart White
highlight def link yamlBool NeriPurple
" yaml end


  " execute "hi rubyLocalVariableOrMethod guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"
" hi rubyLocalVariableOrMethod ctermfg=red
"
" wtf?
" https://vi.stackexchange.com/questions/17199/installed-and-set-colorscheme-but-method-puts-and-print-not-working-on-ruby

" execute "highlight rubyInstanceVariable guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . 02 "ctermbg=NONE cterm=NONE"
" Ruby end


" CofffeScript start
highlight def link coffeeParen White
highlight def link coffeeExtendedOp White
highlight def link coffeeInterpDelim Pink
" CofffeScript end

" F# start
highlight def link fsharpSymbol White
highlight def link fsharpOperator White
highlight def link fsharpFunDef White
highlight def link fsharpKeyChar White
highlight def link fsharpFormat Pink
highlight def link fsharpAttrib White
highlight def link fsharpAttribute WhiteBold
highlight def link fsharpFloat Number
" F# end

" CSS
" css class
highlight def link cssClassName WhiteBold
highlight def link cssClassNameDot White
" highlight def link cssDefinition White

" css id
highlight def link cssIdentifier NeriOrange2Bold

execute "hi cssAtRule guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . 12 "ctermbg=NONE cterm=NONE"

" execute "hi cssColor guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . lighter_green "ctermbg=NONE cterm=NONE"

execute "hi cssTextAttr  guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . lighter_green "ctermbg=NONE cterm=NONE"

highlight def link cssImportant NeriGreen
highlight def link cssInclude White
" highlight def link cssIncludeKeyword White
highlight def link cssMediaType White
highlight def link cssAttrComma White
highlight def link cssFontProp NeriBrownish
highlight def link cssMediaProp NeriBrownish
highlight def link cssBackgroundProp NeriBrownish
highlight def link cssTextProp NeriBrownish
highlight def link cssBorderProp NeriBrownish
highlight def link cssFontAttr White
highlight def link sprocketsPreProc White
highlight def link cssFunctionName White
highlight def link cssFunctionComma White
highlight def link cssColor NeriYellow
highlight def link cssBoxProp NeriBrownish
highlight def link cssDimensionProp NeriBrownish
highlight def link cssPositioningProp NeriBrownish

execute "hi cssBraces guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"
"CSS end



" elixir

" https://github.com/elixir-editors/vim-elixir/labels/eex
" https://github.com/elixir-editors/vim-elixir/issues/343
" eelixirDelimiter - it's the tags, <%= %> in .eex files.
execute "hi eelixirDelimiter guifg=#a6b2c1 guibg=#1f2029 guisp=#1f2029 gui=NONE ctermfg=" . light_green "ctermbg=NONE cterm=NONE"

execute "hi elixirAlias guifg=#a6b2c1 guibg=#1f2029 guisp=#1f2029 gui=NONE ctermfg=" . white "ctermbg=NONE cterm=NONE"


execute "hi elixirKernelFunction guifg=#a6b2c1 guibg=#1f2029 guisp=#1f2029 gui=NONE ctermfg=" . white "ctermbg=NONE cterm=NONE"

execute "hi elixirId guifg=#a6b2c1 guibg=#1f2029 guisp=#1f2029 gui=NONE ctermfg=" . white "ctermbg=NONE cterm=NONE"

execute "hi elixirBlock guifg=#a6b2c1 guibg=#1f2029 guisp=#1f2029 gui=NONE ctermfg=" . white "ctermbg=NONE cterm=NONE"

 execute "hi elixirFunctionDeclaration guifg=#a6b2c1 guibg=#1f2029 guisp=#1f2029 gui=NONE ctermfg=" . white "ctermbg=NONE cterm=NONE"

execute "hi elixirKernelFunction guifg=#a6b2c1 guibg=#1f2029 guisp=#1f2029 gui=NONE ctermfg=" . light_blue "ctermbg=NONE cterm=NONE"

execute "hi elixirUnusedVariable guifg=#a6b2c1 guibg=#1f2029 guisp=#1f2029 gui=NONE ctermfg=" . light_blue "ctermbg=NONE cterm=NONE"

execute "hi elixirAtom guifg=#a6b2c1 guibg=#1f2029 guisp=#1f2029 gui=NONE ctermfg=" . white "ctermbg=NONE cterm=NONE"

" execute "highlight elixirDocString guifg=#a6b2c1 guibg=#1f2029 guisp=#1f2029 gui=NONE ctermfg=" . orange "ctermbg=NONE cterm=NONE"
highlight def link elixirOperator White
" elixir end


" clojure start
" highlight def link clojureFunc White
" highlight def link clojureFunc NeriGrayLight
highlight def link clojureFunc NeriLightBlueFn
highlight def link clojureParen White
highlight def link clojureConstant NeriPurple
highlight def link clojureSpecial NeriPurple
highlight def link clojureQuote NeriPurple
highlight def link clojureDispatch NeriPurple
highlight def link clojureAnonArg NeriPurple
highlight def link clojureDeref NeriPurple
highlight def link clojureVarArg NeriPurple
highlight def link clojureMeta NeriPurple
highlight def link clojureUnquote NeriPurple
highlight def link clojureKeyword NeriBrownish
" highlight def link clojureSymbol NeriGrayLight
highlight def link clojureSymbol White
" highlight def link clojureMacro NeriLightBlue
highlight def link clojureMacro NeriPurple
highlight def link clojureRegexpCharClass NeriOrange2
highlight def link clojureRegexpQuantifier NeriOrange2

" highlight def link rainbowParensShell16 NeriPurple
" execute "hi rainbowParensShell16 guifg=#a6b2c1 guibg=#1f2029 guisp=#1f2029 gui=NONE ctermfg=" . light_blue "ctermbg=NONE cterm=NONE"
" clojure end


" git start

highlight LightBlue189 ctermfg=189 ctermbg=NONE cterm=NONE guifg=#d7d7ff guibg=NONE gui=NONE
highlight def link gitcommitSummary LightBlue189
highlight def link gitcommitoverflow NeriYellow

highlight def link gitcommitBlank White
highlight def link gitcommitBranch String
highlight def link gitcommitOnBranch NeriPurple
highlight Turquiose123 ctermfg=123 ctermbg=NONE cterm=NONE guifg=#87ffff guibg=NONE gui=NONE
highlight def link gitcommitSelectedFile Turquiose123
highlight Purple13 ctermfg=13 ctermbg=NONE cterm=NONE guifg=#ff00ff guibg=NONE gui=NONE
highlight def link gitcommitDiscarded Gray
highlight def link gitcommitDiscardedType Purple13
highlight def link gitcommitDiscardedFile Purple13
" highlight def link gitcommitBranch White
" highlight def link gitcommitHeader White
" highlight def link gitcommitSelectedFile White
"
highlight def link gitIdentityHeader NeriBrownish
highlight def link gitEmailDelimiter String
highlight def link gitEmail String

" highlight def link gitcommitBranch White
"
" gv git diff
highlight def link gvAdded pink_ruby
" highlight def link diffAdded bright_green
highlight def link diffAdded green
highlight def link diffRemoved bright_red
highlight Some_green ctermfg=151 ctermbg=NONE cterm=NONE guifg=#afd7af guibg=NONE gui=NONE
highlight def link diffFile Some_green

highlight def link diffNewFile pink_ruby
highlight def link diffLine Twelve
" gv git diff end
" git end


" elm 
" We override our themes color for everything that is not explicit set to a
" color. That element is called Normal. In kangerlussuaq theme, Normal is set to
" a light blue color. In Elm we set it to text_color which is defined in the 
" theme kangerlussuaq. In kangerlussuaq is is a dark gray/brown color
" execute "hi Normal guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"

execute "hi elmType guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . white231ffffff "ctermbg=NONE cterm=NONE"

execute "hi elmTypedef guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"

execute "hi elmAlias guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"

execute "hi elmTopLevelDecl guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . 134 "ctermbg=NONE cterm=NONE"

execute "hi elmTopLevelFunction guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . yellow03 "ctermbg=NONE cterm=NONE"

execute "hi elmBraces guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . light_blue "ctermbg=NONE cterm=NONE"

execute "hi elmDelimiter guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . light_blue "ctermbg=NONE cterm=NONE"
" elm end



" html
" HTML end tag
" execute "hi htmlendtag guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . light_blue "ctermbg=NONE cterm=NONE"
highlight def link htmlendtag White
highlight def link htmlTag White
" execute "hi htmlArg guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . light_blue "ctermbg=NONE cterm=NONE"
" highlight def link htmlArg NeriYellow
highlight def link htmlArg White

highlight def link htmlBold White

exe "highlight htmlItalic gui=italic guifg=#ff8700 ctermfg=" .light_blue

" some tags and brackets in html. Function is set to purple in kangalussuaq 
execute "hi Function guifg=#a6b2c1 guibg=NONE guisp=NONE gui=NONE ctermfg=" . light_blue "ctermbg=NONE cterm=NONE"

highlight def link htmlLink White
highlight def link htmlH1 White
highlight def link htmlH2 White
highlight def link htmlH3 White
highlight def link htmlH4 White
highlight def link htmlH4 White
highlight def link htmlH2 White

highlight def link htmlTitle White

" html end



" javascript
" See https://github.com/jelera/vim-javascript-syntax/blob/master/syntax/javascript.vim
" See https://github.com/pangloss/vim-javascript/blob/master/syntax/javascript.vim
" function keyword
execute "hi JavaScriptFunction guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"

" Numbers
execute "hi JavaScriptNumber guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . yellow03 "ctermbg=NONE cterm=NONE"
execute "hi jsFloat guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . yellow03 "ctermbg=NONE cterm=NONE"

" Todo comment
execute "hi JavaScriptCommentTodo guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . red "ctermbg=NONE cterm=NONE"

" delete new instanceof typeof
execute "hi javaScriptOperator guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"

" do while for in of
execute "hi javaScriptRepeat guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"

" ES6 String Interpolation {{{
" syntax match javaScriptTemplateDelim "\${\|}" contained
" this fucks up ruby code like this:   {field: "cprnr", name: "Cprnr", value: lambda{|u, p| u.cprnr}, default_col: true},
syntax region javaScriptTemplateVar start=+${+ end=+}+ contains=javaScriptTemplateDelim keepend
syntax region javaScriptTemplateString start=+`+ skip=+\\\(`\|$\)+ end=+`+ contains=javaScriptTemplateVar,javaScriptSpecial keepend
"}}}
" Backtick / grace accent
" " Highlight ES6 template strings
" exe "hi javaScriptTemplateString guifg=#a6b2c1 guibg=#1f2029 guisp=#1f2029 gui=NONE ctermfg=" . string_color "ctermbg=NONE cterm=NONE"
" this fucks up ruby code like this:   {field: "cprnr", name: "Cprnr", value: lambda{|u, p| u.cprnr}, default_col: true},
syntax region javaScriptTemplateVar start=+${+ end=+}+ contains=javaScriptTemplateDelim keepend
" exe "hi javaScriptTemplateDelim guifg=#a6b2c1 guibg=#1f2029 guisp=#1f2029 gui=NONE ctermfg=" . pink "ctermbg=NONE cterm=NONE"
exe "hi javaScriptTemplateVar guifg=#a6b2c1 guibg=#1f2029 guisp=#1f2029 gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"
" see here for how to - https://github.com/jelera/vim-javascript-syntax/blob/master/syntax/javascript.vim

" move this to javascript file. it also influence python ect. start
" syntax match jsObjectProp /\<\K\k*/
" exe "hi jsObjectProp guifg=#a6b2c1 guibg=#1f2029 guisp=#1f2029 gui=NONE ctermfg=" . key_gray_blue "ctermbg=NONE cterm=NONE"
" move this to javascript file. it also influence python ect. end
" syntax match jsFuncCall /\<\K\k*\ze\s*(/
" exe "hi jsFuncCall guifg=#a6b2c1 guibg=#1f2029 guisp=#1f2029 gui=NONE ctermfg=" . light_green "ctermbg=NONE cterm=NONE"
" exe "hi jsFuncCall guifg=#a6b2c1 guibg=#1f2029 guisp=#1f2029 gui=NONE ctermfg=" . white "ctermbg=NONE cterm=NONE"
"
highlight def link jsFuncCall White

highlight def link jsExportDefault NeriPurple
highlight def link jsClassMethodType NeriPurple
highlight def link jsClassDefinition WhiteBold
highlight def link jsClassProperty White
highlight def link jsRestOperator White
highlight def link jsSpreadOperator White

execute "hi jsFrom guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"
execute "hi jsExport guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"

execute "hi jsGlobalNodeObjects guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"

execute "hi jsThis guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"
execute "hi jsNull guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"
execute "hi jsUndefined guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"
execute "hi jsSuper guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"
execute "hi jsNan guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"

execute "hi jsVariableDef guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"
execute "hi jsDestructuringBlock guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"
execute "hi jsSpreadExpression guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"



execute "hi jsArguments guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"
execute "hi jsObject guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"
" execute "hi jsObjectKey guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"
" execute "hi jsObjectKey guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . key_gray_blue "ctermbg=NONE cterm=NONE"
execute "hi jsObjectValue guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"
" execute "hi jsObjectKeyComputed guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . key_gray_blue "ctermbg=NONE cterm=NONE"


execute "hi jsFunction  guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"
" execute "hi jsObjectFuncName guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . light_green "ctermbg=NONE cterm=NONE"
" execute "hi jsObjectFuncName guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . white "ctermbg=NONE cterm=NONE"
" execute "hi jsFuncName guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . light_green "ctermbg=NONE cterm=NONE"
" execute "hi jsFuncName guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . white "ctermbg=NONE cterm=NONE"
execute "hi Include  guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"

" functions name inside classes. Somehow also function inside .then(function () { }) and  .catch(function (error) { });
" execute "hi jsClassFuncName guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . white231ffffff0 "ctermbg=NONE cterm=NONE"
execute "hi jsClassFuncName guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . neriGreen "ctermbg=NONE cterm=NONE"

"execute "hi jsFuncName  guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . light_green "ctermbg=NONE cterm=NONE"
execute "hi jsArrowFunction  guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . white "ctermbg=NONE cterm=NONE"

execute "hi jsFuncArgs guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"

"execute "hi jsVariableDef guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"

"execute "hi  guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"
 
" function call parameters
execute "hi jsParen  guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"

" execute "hi jsFunctionKey guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . key_gray_blue "ctermbg=NONE cterm=NONE"
execute "hi jsFuncBlock guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"

" what we import. For example App when doing: import App from './App';
execute "hi jsModuleKeyword guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"
syntax match from / from / 
execute "hi from guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"

" syntax match new / new / 
" execute "hi new guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"

" move this to js file start
" syntax keyword jsOperator2       delete instanceof typeof void new in of skipwhite skipempty nextgroup=@jsExpression
" syntax match   jsOperator2       /[\!\|\&\+\-\<\>\=\%\/\*\~\^]\{1}/ skipwhite skipempty nextgroup=@jsExpression
" syntax match   jsOperator2       /::/ skipwhite skipempty nextgroup=@jsExpression
" execute "hi jsOperator2 guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"
" move this to js file end
"
highlight def link jsOperator White
" highlight def link jsObjectKey White
" highlight def link jsObjectKey NeriGrayLight
highlight def link jsObjectKey NeriBrownish
highlight def link jsPrototype NeriGrayLight
highlight def link jsObjectKeyComputed White
highlight def link jsFunctionKey White
highlight def link jsNumber NeriYellow
" highlight def link jsTemplateBraces String
highlight def link jsTemplateBraces Pink
" highlight def link jsFuncName Turquoise
highlight def link jsFuncName NeriGreen
" highlight def link jsObjectFuncName Turquoise
highlight def link jsObjectFuncName NeriGreen
highlight def link jsStorageClass NeriPurple
highlight def link jsSwitchBlock NeriPurple
highlight def link jsLabel NeriPurple
highlight def link jsObjectShorthandProp NeriBrownish

execute "hi jsGlobalObjects guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . 03 "ctermbg=NONE cterm=NONE"

" execute "hi jsBuiltins guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . yellow "ctermbg=NONE cterm=NONE"
execute "hi jsBuiltins guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . 03 "ctermbg=NONE cterm=NONE"

execute "hi jsTemplateExpression guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"



" The brackets in jsx.  {{{
" https://github.com/pangloss/vim-javascript/blob/master/syntax/javascript.vim" 
" pink/purple 132-13
execute "hi jsBraces guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . 132 "ctermbg=NONE cterm=NONE"
" The text inside the brackets in jsx
execute "hi jsBlock guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"
"}}}

" whats inside brackets. Ex i in [i]. 
execute "hi jsBracket guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"


" default arg in function. ex function lala(a = b) its = that we change the
" execute "hi jsFuncArgOperator guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . light_blue "ctermbg=NONE cterm=NONE"
" default arg in function. ex function lala(a = b) its b that we change the
" color
" execute "hi jsFuncArgExpression guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"

" var, let, const assignment inside for loops ect. The b in const a = b; 
execute "hi jsRepeatBlock guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"
" var, let, const assignment inside if else block. The b in const a = b;
execute "hi jsIfElseBlock guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"

" the object inside the parentheses. For example elements in if(elements[i])
execute "hi jsParenIfElse guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"

" for example in for (let i = 0; i < elements.length; i++) {doSomething()}  is the color of elements
execute "hi jsParenRepeat guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"

" const b = a < 100 ? a : 100; The second a.
execute "hi jsTernaryIf guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . white "ctermbg=NONE cterm=NONE"
highlight def link jsTernaryIfOperator White

" hov to set the left a in: const b = a < 100 ? a : 100; Right now the jsObject sets the a to gray with jsObjectProp, but i cannot use that because it is used for object properties. so I need to create some regex myself. If I do const b = (a < 100) ? a : 100; then the left a is the correct color. But I dont want redundant code paranthesis.  



execute "hi jsDestructuringPropertyValue  guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"
" execute "hi jsDestructuringPropertyValue  guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . red "ctermbg=NONE cterm=NONE"
execute "hi jsDestructuringValueAssignment  guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . red "ctermbg=NONE cterm=NONE"

execute "hi jsParenSwitch guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"


execute "hi jsTryCatchBlock guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"

execute "hi jsParenCatch guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"

execute "hi jsFinallyBlock guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"

execute "hi jsExceptions guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . yellow "ctermbg=NONE cterm=NONE"

" the \n in "\n"
highlight def link jsSpecial Pink

" jsx start
highlight def link jsxComponentName WhiteBold
highlight def link jsxTagName WhiteBold
highlight def link jsxAttrib NeriBrownish
highlight def link jsxEqual white
highlight def link jsxBraces white
highlight def link jsxDot White
" jsx end

" javascript end


" json
highlight def link jsonKeyword NeriBrownish
highlight def link jsonBraces White
" highlight def link jsonQuote String
" json end



" kotlin
execute "hi ktStructure guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"
execute "hi ktOperator guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"
execute "hi ktArrow guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . white "ctermbg=NONE cterm=NONE"
" kotlin end



" php
execute "hi phpParent guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . white "ctermbg=NONE cterm=NONE"
execute "hi phpComparison guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . light_blue "ctermbg=NONE cterm=NONE"
execute "hi Identifier guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"
execute "hi delimiter guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . yellow03 "ctermbg=NONE cterm=NONE"
" php end



" SCSS
" css class
" css id
" execute "hi sassIdChar guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . 135 "ctermbg=NONE cterm=NONE"
" execute "hi sassId guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . 135 "ctermbg=NONE cterm=NONE"
" 
" execute "hi cssAtRule guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . 12 "ctermbg=NONE cterm=NONE"

" execute "hi cssColor guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . lighter_green "ctermbg=NONE cterm=NONE"

" execute "hi cssTextAttr  guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . lighter_green "ctermbg=NONE cterm=NONE"

highlight def link sassMedia NeriPurple
highlight def link sassMediaOperators NeriPurple
" SCSS end



" sh, bash ect.
" let orange=166
let orange_yellow=172
" when we define a variable

" $1 and $SOME_VAR_NAME. 

" execute "hi shDerefVar guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"

" 172 is orange/yellow

" execute "hi shCommandSubBQ guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . red "ctermbg=NONE cterm=NONE"

" = equal sign
" execute "hi shTestOpr guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . light_blue "ctermbg=NONE cterm=NONE"

" execute "hi shFunctionKey guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"

highlight def link shLoop NeriPurple
highlight def link shArithRegion White
highlight def link shExprRegion White
highlight def link shFunction White
highlight def link shSource White
highlight def link shOperator White
highlight def link shOption White

highlight def link shCmdSubRegion White
highlight def link shCommandSub White
" highlight def link PreProc White

highlight def link shTestOpr White
highlight def link shExpr White
highlight def link shStatement White
highlight def link shSpecial White
highlight def link shSpecial White
hi def link shQuote String
" highlight def link shFor NeriPurple
hi def link shVariable White
hi def link shDerefSimple White
" \n new line in string
hi def link shCtrlSeq Pink
" sh, bash ect. end


" vimscript
" execute "hi vimFuncName guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"
highlight def link vimFuncName NeriPurple
highlight def link vimOper White
highlight def link vimOption NeriGreen
highlight def link vimUserAttrb NeriGreen
highlight def link vimSetSep White
highlight def link vimContinue White
highlight def link vimParenSep White
highlight def link vimCmplxRepeat NeriPurple
" vimscript end


" xml
" is used in jsx
exe "hi xmlendtag guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . yellow "ctermbg=NONE cterm=NONE"
exe "hi xmltag guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . yellow "ctermbg=NONE cterm=NONE"
exe "hi xmltagName guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . yellow "ctermbg=NONE cterm=NONE"
"exe "hi xmltagName guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . purple141 "ctermbg=NONE cterm=NONE"
exe "hi xmlAttrib guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . text_color "ctermbg=NONE cterm=NONE"
execute "hi xmlAttribPunct guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . light_blue "ctermbg=NONE cterm=NONE"
syntax match this /this/ 
execute "hi this guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . string_color "ctermbg=NONE cterm=NONE"
syntax match props /props/ 
execute "hi props guifg=#87d787 guibg=NONE guisp=NONE gui=NONE ctermfg=" . 182 "ctermbg=NONE cterm=NONE"
" is used in jsx end
" xml end

" sql start
highlight def link sqlKeyword NeriPurple
" sql end

" gitgutter
" https://vimawesome.com/plugin/vim-gitgutter
highlight SignColumn guibg=#3a3a3a ctermbg=237 guifg=#008000 ctermfg=02
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1
" gitgutter end
