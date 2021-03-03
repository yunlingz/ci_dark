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

" -------- begin function ----------
let g:airline#themes#ci_dark#palette = {}
function! airline#themes#ci_dark#refresh()

let s:colors = ci_dark#get_colors()

let s:palette = {}

let s:airline_b = [s:colors.foreground, s:colors.win_bg, '', '']
let s:airline_c = [s:colors.foreground, s:colors.background_lighter, '', '']
let s:airline_modified_group = {
  \ 'airline_c': [s:colors.green, s:colors.background_lighter, '', ''],
  \ }


let s:airline_a_normal = [s:colors.background , s:colors.cyan, '', '']
let s:airline_b_normal = s:airline_b
let s:airline_c_normal = s:airline_c
let s:palette.normal = airline#themes#generate_color_map(s:airline_a_normal, s:airline_b_normal, s:airline_c_normal)
let s:palette.normal_modified = s:airline_modified_group


let s:airline_a_insert = [s:colors.background , s:colors.green, '', '']
let s:airline_b_insert = s:airline_b
let s:airline_c_insert = s:airline_c
let s:palette.insert = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)
let s:palette.insert_modified = s:airline_modified_group


let s:airline_a_visual = [s:colors.background , s:colors.yellow, '', '']
let s:airline_b_visual = s:airline_b
let s:airline_c_visual = s:airline_c
let s:palette.visual = airline#themes#generate_color_map(s:airline_a_visual, s:airline_b_visual, s:airline_c_visual)
let s:palette.visual_modified = s:airline_modified_group


let s:palette.terminal = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)


let s:palette.replace = s:palette.insert
let s:palette.replace_modified = s:airline_modified_group


let s:airline_a_inactive = [s:colors.foreground, s:colors.win_bg, '', '']
let s:airline_b_inactive = [s:colors.foreground, s:colors.win_bg, '', '']
let s:airline_c_inactive = s:airline_c
let s:palette.inactive = airline#themes#generate_color_map(s:airline_a_inactive, s:airline_b_inactive, s:airline_c_inactive)
let s:palette.inactive_modified = s:airline_modified_group


let s:airline_a_commandline = s:airline_a_normal
let s:airline_b_commandline = s:airline_b
let s:airline_c_commandline = s:airline_c
let s:palette.commandline = airline#themes#generate_color_map(s:airline_a_commandline, s:airline_b_commandline, s:airline_c_commandline)

let g:airline#themes#ci_dark#palette = s:palette
" ------
endfunction
" -------- end function ----------
call airline#themes#ci_dark#refresh()
