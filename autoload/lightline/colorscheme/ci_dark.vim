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

let s:colors = ci_dark#get_colors()

let s:p = { 'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {} }

let s:p.normal.left = [[s:colors.background, s:colors.cyan], [s:colors.foreground, s:colors.win_bg]]
let s:p.normal.right = [[s:colors.background, s:colors.cyan], [s:colors.foreground, s:colors.win_bg]]
let s:p.normal.middle = [[s:colors.foreground, s:colors.background_lighter]]
let s:p.normal.error = [[s:colors.background, s:colors.red]]
let s:p.normal.warning = [[s:colors.background, s:colors.yellow]]

let s:p.insert.left = [[s:colors.background, s:colors.green], [s:colors.foreground, s:colors.win_bg]]
let s:p.insert.right = [[s:colors.background, s:colors.green], [s:colors.foreground, s:colors.win_bg]]

let s:p.replace.left = [[s:colors.background, s:colors.red], [s:colors.foreground, s:colors.win_bg]]
let s:p.replace.right = [[s:colors.background, s:colors.red], [s:colors.foreground, s:colors.win_bg]]

let s:p.visual.left = [[s:colors.background, s:colors.yellow], [s:colors.foreground, s:colors.win_bg]]
let s:p.visual.right = [[s:colors.background, s:colors.yellow], [s:colors.foreground, s:colors.win_bg]]

let s:p.inactive.left =  [[s:colors.foreground, s:colors.win_bg], [s:colors.foreground, s:colors.win_bg]]
let s:p.inactive.right = [[s:colors.foreground, s:colors.win_bg], [s:colors.foreground, s:colors.win_bg]]
let s:p.inactive.middle = [[s:colors.foreground, s:colors.background_lighter]]

let s:p.tabline.left = [[s:colors.foreground, s:colors.background_lighter]]
let s:p.tabline.right = [[s:colors.background, s:colors.cyan]]
let s:p.tabline.middle = [[s:colors.foreground, s:colors.background_lighter]]
let s:p.tabline.tabsel = [[s:colors.background, s:colors.cyan]]

let g:lightline#colorscheme#ci_dark#palette = lightline#colorscheme#fill(s:p)
