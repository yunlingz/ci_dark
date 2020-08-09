" ------------------------------------------------------------------------
" Copyright 2020 github.com/chuling <meetchuling@gmail.com>
" SPDX-License-Identifier: MIT OR Apache-2.0
" ------------------------------------------------------------------------

let s:colors = ci_dark#get_colors()

let s:p = { 'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {} }

let s:p.normal.left = [[s:colors.background, s:colors.cyan], [s:colors.foreground, s:colors.win_bg]]
let s:p.normal.right = [[s:colors.background, s:colors.cyan], [s:colors.foreground, s:colors.win_bg]]
let s:p.normal.middle = [[s:colors.foreground, s:colors.blackground_lighter]]
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
let s:p.inactive.middle = [[s:colors.foreground, s:colors.blackground_lighter]]

let s:p.tabline.left = [[s:colors.foreground, s:colors.blackground_lighter]]
let s:p.tabline.right = [[s:colors.background, s:colors.cyan]]
let s:p.tabline.middle = [[s:colors.foreground, s:colors.blackground_lighter]]
let s:p.tabline.tabsel = [[s:colors.background, s:colors.cyan]]

let g:lightline#colorscheme#ci_dark#palette = lightline#colorscheme#fill(s:p)
