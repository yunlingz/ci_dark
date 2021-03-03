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

if exists('g:indentLine_enabled') && (g:indentLine_enabled != 0)
  syn region jsonKeyword matchgroup=jsonQuote start=/"/ end=/"\ze[[:blank:]\r\n]*\:/ contained
  syn region jsonString oneline matchgroup=jsonQuote start=/"/ skip=/\\\\\|\\"/ end=/"/ contains=jsonEscape contained
endif
