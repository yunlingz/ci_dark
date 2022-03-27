" SPDX-License-Identifier: BSD-2-Clause
"
" Copyright 2021 Yunling Zhu <yunling.zhu@outlook.com>

let s:colors = {}

let s:emitting = get(g:, 'ci_dark_emitting', 0) == 1

let s:colors.black = '#24292e'
" --
if s:emitting
  let s:colors.black = '#000000'
endif
" --
let s:colors.red = '#f97583'
let s:colors.green = '#85e89d'
let s:colors.yellow = '#ffea7f'
let s:colors.blue = '#79b8ff'
let s:colors.magenta = '#b392f0'
let s:colors.cyan = '#73e3ff'
let s:colors.white = '#f6f8fa'
" --
if s:emitting
  let s:colors.white = '#f8f8f8'
endif
" --
let s:colors.gray = '#959da5'

let s:colors.foreground = s:colors.white
let s:colors.background = s:colors.black
let s:colors.background_lighter = '#2d3237'

let s:colors.selection_bg = '#545f6b'
" let s:colors.selection_fg = s:colors.foreground

let s:colors.cursor_bg = s:colors.green
let s:colors.cursor_fg = s:colors.background
let s:colors.cursor_guide = '#2f363d'

let s:colors.split = '#454d56'

let s:colors.win_bg = '#3a3f43'
let s:colors.selected_bg = '#1269d3'

let s:colors.sneak_bg = '#b32ef0'

let s:colors.none = 'NONE'
let s:colors.underline = 'underline'

let s:colors.bold = 'NONE'
if get(g:, 'ci_dark_enable_bold', 0) == 1
  let s:colors.bold = 'bold'
endif

function! ci_dark#get_colors() abort
  return s:colors
endfunction
