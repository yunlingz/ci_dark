" SPDX-License-Identifier: MIT
"
" Copyright 2021 Ling CHU <meetchuling@gmail.com>
"
" This file is available under the MIT License;
" you may not use this file except in compliance with the MIT License.

if exists('g:indentLine_enabled') && (g:indentLine_enabled != 0)
  syn region jsonKeyword matchgroup=jsonQuote start=/"/ end=/"\ze[[:blank:]\r\n]*\:/ contained
  syn region jsonString oneline matchgroup=jsonQuote start=/"/ skip=/\\\\\|\\"/ end=/"/ contains=jsonEscape contained
endif
