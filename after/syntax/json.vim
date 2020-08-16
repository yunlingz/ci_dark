if exists('g:indentLine_enabled') && (g:indentLine_enabled != 0)
  syn region jsonKeyword matchgroup=jsonQuote start=/"/ end=/"\ze[[:blank:]\r\n]*\:/ contained
  syn region jsonString oneline matchgroup=jsonQuote start=/"/ skip=/\\\\\|\\"/ end=/"/ contains=jsonEscape contained
endif
