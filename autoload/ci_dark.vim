" Copyright 2021 Ling <meetchuling@gmail.com>
"
" Licensed under the Apache License, Version 2.0 (the "License");
" you may not use this file except in compliance with the License.
" You may obtain a copy of the License at
"
" http://www.apache.org/licenses/LICENSE-2.0
"
" Unless required by applicable law or agreed to in writing, software
" distributed under the License is distributed on an "AS IS" BASIS,
" WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
" See the License for the specific language governing permissions and
" limitations under the License.

let s:colors = {}

let s:colors.black = '#24292e'
let s:colors.red = '#f97583'
let s:colors.green = '#85e89d'
let s:colors.yellow = '#ffea7f'
let s:colors.blue = '#79b8ff'
let s:colors.magenta = '#b392f0'
let s:colors.cyan = '#73e3ff'
let s:colors.white = '#f6f8fa'
let s:colors.gray = '#959da5'

let s:colors.foreground = s:colors.white
let s:colors.background = s:colors.black
let s:colors.background_lighter = '#2d3237'

let s:colors.selection_bg = '#c8c8fa'
let s:colors.selection_fg = s:colors.background

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
