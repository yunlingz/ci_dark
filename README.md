# CI Dark

## Preview

### Vim/Neovim

![nvim preview](https://raw.githubusercontent.com/yunlingz/vim-equinusocio-material-preview/master/ci_dark/nvim.png)

### Terminal

![term preview](https://raw.githubusercontent.com/yunlingz/vim-equinusocio-material-preview/master/ci_dark/term.png)

## Usage

iTerm color preset: [ci_dark.itermcolors](term/)

Neovim/Vim

```viml
Plug 'yunlingz/ci_dark'

" optional rainbow parentheses improved
" *ci_dark* has a built-in automated configuration for *rainbow*
" there is no need to specify `g:rainbow_conf` manually
Plug 'luochen1990/rainbow'

" true colors are required
syntax on
set termguicolors

" keywords bolded, disabled(=0) by default
let g:ci_dark_enable_bold = 1

colorscheme ci_dark

" better vertsplit char
set fillchars+=vert:│

let g:airline_theme = 'ci_dark'
let g:lightline = {
  \ 'colorscheme': 'ci_dark',
}
```

[basic color preset](preset_doc/color.txt)

## License

[BSD-2-Clause](LICENSE)

## Other

[my vim configurations](https://github.com/yunlingz/config-vim)
