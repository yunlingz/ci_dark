" Copyright (c) 2020 Ling CHU <meetchuling@gmail.com>
"
" Permission to use, copy, modify, and distribute this software for any
" purpose with or without fee is hereby granted, provided that the above
" copyright notice and this permission notice appear in all copies.
"
" THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
" WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
" MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
" ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
" WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
" ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
" OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

if has('nvim')
  highlight! clear
  syntax reset
else
  if version > 580
    highlight! clear
    if exists('syntax_on')
      syntax reset
    endif
  endif
endif

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
  finish
endif
" ---------------------------------------------------------------------
function! s:HL(group, ...) abort
  execute 'highlight! ' . a:group . ' ctermfg=NONE'
  execute 'highlight! ' . a:group . ' ctermbg=NONE'
  execute 'highlight! ' . a:group . ' cterm=NONE'

  let fg = get(a:, 1, '')
  let bg = get(a:, 2, '')
  let attr = get(a:, 3, '')

  if !empty(fg)
    execute 'highlight! ' . a:group . ' guifg=' . fg
  else
    echoerr 'no fg for ' . a:group
    return
  endif

  if !empty(bg)
    execute 'highlight! ' . a:group . ' guibg=' . bg
  else
    echoerr 'no bg for ' . a:group
    return
  endif

  if !empty(attr)
    execute 'highlight! ' . a:group . ' gui=' . attr
  else
    execute 'highlight! ' . a:group . ' gui=NONE'
  endif
endfunction
" ---------------------------------------------------------------------
let g:colors_name = "ci_dark"
set background=dark
" ---------------------------------------------------------------------
let s:colors = ci_dark#get_colors()

" editor color scheme
" ----------------------------------------------------
call s:HL('ColorColumn', s:colors.none, s:colors.cursor_guide)
call s:HL('Conceal', s:colors.blue, s:colors.none)
call s:HL('Cursor', s:colors.cursor_fg, s:colors.cursor_bg)
call s:HL('CursorIM', s:colors.cursor_fg, s:colors.cursor_bg)
call s:HL('CursorColumn', s:colors.none, s:colors.cursor_guide)
call s:HL('CursorLine', s:colors.none, s:colors.cursor_guide)
" ----------------------------------------------------
call s:HL('Directory', s:colors.cyan, s:colors.none)
" ----------------------------------------------------
call s:HL('DiffAdd', s:colors.background, s:colors.green)
call s:HL('DiffChange', s:colors.background, s:colors.yellow)
call s:HL('DiffDelete', s:colors.background, s:colors.red)
call s:HL('DiffText', s:colors.background, s:colors.magenta)
" ----------------------------------------------------
call s:HL('EndOfBuffer', s:colors.background, s:colors.none)
" ----------------------------------------------------
call s:HL('ErrorMsg', s:colors.red, s:colors.none)
" ----------------------------------------------------
call s:HL('VertSplit', s:colors.split, s:colors.none)
" ----------------------------------------------------
call s:HL('Folded', s:colors.background, s:colors.magenta, s:colors.bold)
call s:HL('FoldColumn', s:colors.magenta, s:colors.none, s:colors.bold)
" ----------------------------------------------------
call s:HL('SignColumn', s:colors.none, s:colors.none)
call s:HL('IncSearch', s:colors.background, s:colors.magenta)
call s:HL('LineNr', s:colors.gray, s:colors.none)
call s:HL('CursorLineNr', s:colors.foreground, s:colors.none)
call s:HL('MatchParen', s:colors.background, s:colors.red)
" ----------------------------------------------------
call s:HL('ModeMsg', s:colors.foreground, s:colors.none)
call s:HL('MoreMsg', s:colors.green, s:colors.none)
call s:HL('NonText', s:colors.gray, s:colors.none)
" base color
call s:HL('Normal', s:colors.foreground, s:colors.background)
" ----------------------------------------------------
call s:HL('Pmenu', s:colors.foreground, s:colors.win_bg)
call s:HL('PmenuSel', s:colors.foreground, s:colors.selected_bg)
call s:HL('PmenuSbar', s:colors.none, s:colors.win_bg)
call s:HL('PmenuThumb', s:colors.none, s:colors.foreground)
" ----------------------------------------------------
call s:HL('Question', s:colors.red, s:colors.none)
" link it to normal
call s:HL('QuickFixLine', s:colors.foreground, s:colors.background)
call s:HL('Search', s:colors.background, s:colors.magenta)
call s:HL('SpecialKey', s:colors.gray, s:colors.none)
" ----------------------------------------------------
call s:HL('SpellBad', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('SpellCap', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('SpellLocal', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('SpellRare', s:colors.none, s:colors.none, s:colors.underline)
" ----------------------------------------------------
call s:HL('StatusLine', s:colors.foreground, s:colors.none)
call s:HL('StatusLineNC', s:colors.gray, s:colors.none)
call s:HL('StatusLineTerm', s:colors.foreground, s:colors.none)
call s:HL('StatusLineTermNC', s:colors.gray, s:colors.none)
" ----------------------------------------------------
call s:HL('TabLine', s:colors.foreground, s:colors.none)
call s:HL('TabLineFill', s:colors.none, s:colors.none)
call s:HL('TabLineSel', s:colors.foreground, s:colors.gray)
call s:HL('Terminal', s:colors.foreground, s:colors.background)
call s:HL('Title', s:colors.red, s:colors.none)
call s:HL('Visual', s:colors.selection_fg, s:colors.selection_bg)
call s:HL('VisualNOS', s:colors.selection_fg, s:colors.selection_bg)
call s:HL('WarningMsg', s:colors.red, s:colors.none)
call s:HL('WildMenu', s:colors.background, s:colors.cyan)

" standard syntax
" ----------------------------------------------------
call s:HL('Comment', s:colors.gray, s:colors.none)
" ----------------------------------------------------
call s:HL('Constant', s:colors.foreground, s:colors.none)
call s:HL('String', s:colors.yellow, s:colors.none)
call s:HL('Number', s:colors.cyan, s:colors.none)
call s:HL('Boolean', s:colors.cyan, s:colors.none)
call s:HL('Float', s:colors.cyan, s:colors.none)
" ----------------------------------------------------
call s:HL('Identifier', s:colors.blue, s:colors.none)
call s:HL('Function', s:colors.blue, s:colors.none)
" ----------------------------------------------------
call s:HL('Statement', s:colors.magenta, s:colors.none, s:colors.bold)
call s:HL('Conditional', s:colors.cyan, s:colors.none, s:colors.bold)
call s:HL('Repeat', s:colors.cyan, s:colors.none, s:colors.bold)
call s:HL('Operator', s:colors.magenta, s:colors.none)
call s:HL('Keyword', s:colors.magenta, s:colors.none, s:colors.bold)
call s:HL('Exception', s:colors.cyan, s:colors.none, s:colors.bold)
" ----------------------------------------------------
call s:HL('PreProc', s:colors.cyan, s:colors.none)
call s:HL('Include', s:colors.cyan, s:colors.none)
call s:HL('Define', s:colors.blue, s:colors.none)
call s:HL('Macro', s:colors.green, s:colors.none)
call s:HL('PreCondit', s:colors.green, s:colors.none)
" ----------------------------------------------------
call s:HL('Type', s:colors.green, s:colors.none, s:colors.bold)
call s:HL('StorageClass', s:colors.green, s:colors.none, s:colors.bold)
call s:HL('Structure', s:colors.magenta, s:colors.none, s:colors.bold)
call s:HL('Typedef', s:colors.green, s:colors.none, s:colors.bold)
" ----------------------------------------------------
call s:HL('Special', s:colors.cyan, s:colors.none)
" ----------------------------------------------------
call s:HL('Underlined', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('Ignore', s:colors.none, s:colors.none)
call s:HL('Error', s:colors.red, s:colors.none)
call s:HL('Todo', s:colors.yellow, s:colors.none)

" coc.nvim
" ----------------------------------------------------
call s:HL('CocErrorSign', s:colors.red, s:colors.none)
call s:HL('CocWarningSign', s:colors.yellow, s:colors.none)
call s:HL('CocInfoSign', s:colors.green, s:colors.none)
call s:HL('CocHintSign', s:colors.gray, s:colors.none)
" ----------------------------------------------------
call s:HL('CocErrorHighlight', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('CocWarningHighlight', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('CocInfoHighlight', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('CocHintHighlight', s:colors.none, s:colors.none, s:colors.underline)

" vim-lsp
" ----------------------------------------------------
call s:HL('LspErrorText', s:colors.red, s:colors.none)
call s:HL('LspWarningText', s:colors.yellow, s:colors.none)
call s:HL('LspInformationText', s:colors.green, s:colors.none)
call s:HL('LspHintText', s:colors.gray, s:colors.none)
" ----------------------------------------------------
call s:HL('LspErrorHighlight', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('LspWarningHighlight', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('LspInformationHighlight', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('LspHintHighlight', s:colors.none, s:colors.none, s:colors.underline)

" ale
" ----------------------------------------------------
call s:HL('ALEErrorSign', s:colors.red, s:colors.none)
call s:HL('ALEWarningSign', s:colors.yellow, s:colors.none)
call s:HL('ALEInfoSign', s:colors.green, s:colors.none)
" ----------------------------------------------------
call s:HL('ALEError', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('ALEWarning', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('ALEInfo', s:colors.none, s:colors.none, s:colors.underline)

" vim-signify/gitgutter
" ----------------------------------------------------
call s:HL('SignifySignAdd', s:colors.green, s:colors.none)
call s:HL('SignifySignChange', s:colors.yellow, s:colors.none)
call s:HL('SignifySignDelete', s:colors.red, s:colors.none)
" ----------------------------------------------------
call s:HL('GitGutterAdd', s:colors.green, s:colors.none)
call s:HL('GitGutterChange', s:colors.yellow, s:colors.none)
call s:HL('GitGutterDelete', s:colors.red, s:colors.none)

" rainbow
" ----------------------------------------------------
if !exists('g:rainbow_conf')
  let g:rainbow_conf = {}
endif

if !has_key(g:rainbow_conf, 'guifgs')
  let g:rainbow_conf['guifgs'] = [s:colors.cyan, s:colors.yellow, s:colors.red]
endif

if !has_key(g:rainbow_conf, 'separately')
  let g:rainbow_conf['separately'] = {}
endif

if !has_key(g:rainbow_conf['separately'], 'lisp')
  let g:rainbow_conf['separately']['lisp'] = {
    \ 'guifgs': g:rainbow_conf['guifgs'],
    \ }
endif

" indentline
" ----------------------------------------------------
if !exists('g:indentLine_color_gui')
  let g:indentLine_color_gui = s:colors.split
endif

" vim-sneak
" ----------------------------------------------------
call s:HL('Sneak', s:colors.foreground, s:colors.sneak_bg, s:colors.bold)
call s:HL('SneakScope', s:colors.background, s:colors.foreground)

" ---------------------------------------------------------------------
if has('nvim')
  let g:terminal_color_0 = s:colors.black
  let g:terminal_color_1 = s:colors.red
  let g:terminal_color_2 = s:colors.green
  let g:terminal_color_3 = s:colors.yellow
  let g:terminal_color_4 = s:colors.blue
  let g:terminal_color_5 = s:colors.magenta
  let g:terminal_color_6 = s:colors.cyan
  let g:terminal_color_7 = s:colors.white
  let g:terminal_color_8 = s:colors.gray
  let g:terminal_color_9 = s:colors.red
  let g:terminal_color_10 = s:colors.green
  let g:terminal_color_11 = s:colors.yellow
  let g:terminal_color_12 = s:colors.blue
  let g:terminal_color_13 = s:colors.magenta
  let g:terminal_color_14 = s:colors.cyan
  let g:terminal_color_15 = s:colors.white
elseif exists('*term_setansicolors')
  let g:terminal_ansi_colors = [
    \ s:colors.black,
    \ s:colors.red,
    \ s:colors.green,
    \ s:colors.yellow,
    \ s:colors.blue,
    \ s:colors.magenta,
    \ s:colors.cyan,
    \ s:colors.white,
    \ s:colors.gray,
    \ s:colors.red,
    \ s:colors.green,
    \ s:colors.yellow,
    \ s:colors.blue,
    \ s:colors.magenta,
    \ s:colors.cyan,
    \ s:colors.white,
    \ ]
endif
