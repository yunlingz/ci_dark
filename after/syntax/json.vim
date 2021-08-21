" SPDX-License-Identifier: BSD-2-Clause
"
" Copyright 2021 Zhu Yun-ling <yunling.zhu@outlook.com>

if exists('g:indentLine_enabled') && (g:indentLine_enabled != 0)
  syn region jsonKeyword matchgroup=jsonQuote start=/"/ end=/"\ze[[:blank:]\r\n]*\:/ contained
  syn region jsonString oneline matchgroup=jsonQuote start=/"/ skip=/\\\\\|\\"/ end=/"/ contains=jsonEscape contained
endif
