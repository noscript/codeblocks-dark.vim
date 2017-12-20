" Vim color file
" Author:       Sergey Vlasov <sergey@vlasov.me>
" Last Change:  2017-12-14
" Version:      0.5
" Git:          http://github.com/noscript/codeblocks-dark.vim

" Inspired by the original Code::Blocks theme in a dark manner.

set background=dark
highlight clear
let g:colors_name="codeblocks-dark"

let save_cpo=&cpo
set cpo&vim

" basic highlight groups (:help highlight-groups) {{{

" text {{{
hi Normal       guifg=#CED1CF       guibg=#1B1D21       gui=NONE
hi ColorColumn  guifg=#FF0000       guibg=#3E1F1F

hi Directory    guifg=#729FCF       guibg=NONE          gui=bold

hi NonText      guifg=#353535       guibg=#1B1D21       gui=NONE
hi SpecialKey   guifg=#1F2125       guibg=NONE          gui=NONE
hi Conceal      guifg=#1F2125       guibg=NONE          gui=NONE

hi SpellBad     guifg=NONE          guibg=#1F323E       gui=NONE
hi SpellCap     guifg=NONE          guibg=#1F323E       gui=NONE
hi SpellLocal   guifg=NONE          guibg=#1F323E       gui=NONE
hi SpellRare    guifg=NONE          guibg=#1F323E       gui=NONE

hi DiffText     guifg=#4F341D       guibg=#FFCC59       gui=NONE
hi DiffAdd      guifg=#ADFF2F       guibg=#247548       gui=NONE
hi DiffDelete   guifg=#FFC2BC       guibg=#8B353E       gui=NONE
hi DiffChange   guifg=#FFDD8F       guibg=#995F2A       gui=NONE
" }}}

" borders / separators / menus {{{
hi Folded       guifg=#353535       guibg=#1B1D21       gui=underline
hi FoldColumn   guifg=#C8BCB9       guibg=#1B1D21       gui=bold
hi SignColumn   guifg=#D6E5F9       guibg=#344863       gui=bold

hi Pmenu        guifg=#1B1D21       guibg=#A6A190       gui=NONE
hi PmenuSel     guifg=#FFFFFF       guibg=#133293       gui=NONE
hi PmenuSbar    guifg=NONE          guibg=#555555       gui=NONE
hi PmenuThumb   guifg=NONE          guibg=#CCCCCC       gui=NONE

hi StatusLine   guifg=#D6E5F9       guibg=#3465A4       gui=bold
hi StatusLineNC guifg=#D1D1D1       guibg=#353535       gui=NONE
hi WildMenu     guifg=#FFFFFF       guibg=#133293       gui=bold
hi VertSplit    guifg=#353535       guibg=#353535       gui=NONE

hi TabLine      guifg=#B5B4A5       guibg=#303030       gui=NONE
hi TabLineFill  guifg=#444444       guibg=#353535       gui=NONE
hi TabLineSel   guifg=#ECEAD7       guibg=#444444       gui=NONE

"hi Menu
"hi Scrollbar
"hi Tooltip
" }}}

" cursor / dynamic / other {{{
hi Cursor       guifg=#1B1D21       guibg=#FFFF60       gui=NONE
hi CursorIM     guifg=#1B1D21       guibg=#AACCFF       gui=NONE
hi LineNr       guifg=#545c5e       guibg=#1B1D21       gui=NONE
hi CursorLine   guifg=NONE          guibg=#383A3D       gui=NONE
hi CursorLineNR guifg=#D1D1D1       guibg=NONE          gui=NONE
hi CursorColumn guifg=NONE          guibg=#383838       gui=NONE

hi Visual       guifg=NONE          guibg=#344863       gui=NONE
hi VisualNOS    guifg=NONE          guibg=#36393D       gui=NONE
hi IncSearch    guifg=#1B1D21       guibg=#EEDD33       gui=bold
hi Search       guifg=#FFFFFF       guibg=#A80F2B       gui=NONE
hi MatchParen   guifg=#FFC124       guibg=#47360A       gui=bold
" }}}

" listings / messages {{{
hi ModeMsg      guifg=#EECC18       guibg=NONE          gui=NONE
hi Title        guifg=#DD4452       guibg=NONE          gui=bold
hi Question     guifg=#66D077       guibg=NONE          gui=NONE
hi MoreMsg      guifg=#39D049       guibg=NONE          gui=NONE
hi ErrorMsg     guifg=#FFFFFF       guibg=#FF0000       gui=bold
hi WarningMsg   guifg=#3A3A3A       guibg=#EAB700       gui=bold
" }}}

" }}}

" syntax highlighting groups {{{
"*Comment*      any comment
hi Comment      guifg=#5F8787       guibg=NONE          gui=NONE

"*Constant*     any constant
" String        a string constant
" Character     a character constant: 'c', '\n'
" Number        a number constant: 234, 0xff
" Boolean       a boolean constant: TRUE, false
" Float         a floating point constant: 2.3e10
hi Constant     guifg=#F34AFF       guibg=NONE          gui=NONE
hi String       guifg=#87A1FF       guibg=NONE          gui=NONE
hi Character    guifg=#FFA500       guibg=NONE          gui=bold
hi Boolean      guifg=#F34AFF       guibg=NONE          gui=bold

"*PreProc*      generic
" Include       preprocessor #include
" Define        preprocessor #define
" Macro         same as Define
" PreCondit     preprocessor #if, #else, #endif, etc.
hi PreProc      guifg=#A2CD27       guibg=NONE          gui=NONE

"*Type*         int, long, char, etc.
" StorageClass  static, register, volatile, etc.
" Structure     struct, union, enum, etc.
" Typedef       A typedef
hi Type         guifg=#69C2FF       guibg=NONE          gui=bold

"*Identifier*   any variable name
" Function      function name (also: methods for classes)
hi Identifier   guifg=#5AB0D6       guibg=NONE          gui=NONE

" Statement     any statement
" Conditional   if, then, else, endif, switch, etc.
" Repeat        for, do, while, etc.
" Label         case, default, etc.
" Operator      sizeof, +, *, etc.
" Keyword       any other keyword
" Exception     try, catch, throw
hi Statement    guifg=#69C2FF       guibg=NONE          gui=bold
hi Operator     guifg=#EF3E3E       guibg=NONE          gui=NONE
hi Braces       guifg=#FFFF00       guibg=NONE          gui=NONE

"*Special*      any special symbol
" SpecialChar   special character in a constant
" Tag           you can use CTRL-] on this
" Delimiter     character that needs attention
" SpecialComment special things inside a comment
" Debug         debugging statements
hi Special      guifg=#83E683       guibg=NONE          gui=bold
hi SpecialChar  guifg=#FFA500       guibg=NONE          gui=bold
hi Delimiter    guifg=#FFA500       guibg=NONE          gui=bold

hi Underlined   guifg=#80A0FF       guibg=NONE          gui=underline
hi Ignore       guifg=#888888       guibg=NONE          gui=NONE
hi Error        guifg=#FFFFFF       guibg=#FF0000       gui=NONE
hi Todo         guifg=#FFFFFF       guibg=#EE7700       gui=bold
" }}}

let &cpo=save_cpo

