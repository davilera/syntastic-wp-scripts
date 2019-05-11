# syntastic-wp-scripts

Simple plugin that adds [WordPress’ linters](https://github.com/WordPress/gutenberg/packages/scripts/) (`wp-scripts`) for CSS and JavaScript into [Syntastic](https://github.com/vim-syntastic/syntastic).

# Installation

This plugin follows the standard runtime path structure, and as such it can be installed with a variety of plugin managers:

| Plugin Manager | Install with... |
| ------------- | ------------- |
| [Pathogen](https://github.com/tpope/vim-pathogen) | `git clone https://github.com/davilera/syntastic-wp-scripts ~/.vim/bundle/syntastic-wp-scripts`<br/>Remember to run `:Helptags` to generate help tags |
| [NeoBundle](https://github.com/Shougo/neobundle.vim) | `NeoBundle 'davilera/syntastic-wp-scripts'` |
| [Vundle](https://github.com/VundleVim/Vundle.vim) | `Plugin 'davilera/syntastic-wp-scripts'` |
| [Plug](https://github.com/junegunn/vim-plug) | `Plug 'davilera/syntastic-wp-scripts'` |
| [Dein](https://github.com/Shougo/dein.vim) | `call dein#add('davilera/syntastic-wp-scripts')` |
| [minpac](https://github.com/k-takata/minpac/) | `call minpac#add('davilera/syntastic-wp-scripts')` |
| pack feature (native Vim 8 package feature)| `git clone https://github.com/davilera/syntastic-wp-scripts ~/.vim/pack/dist/start/syntastic-wp-scripts` |
| manual | copy all of the files into your `~/.vim` directory |

# Documentation

To activate `wp-script` linters in JavaScript or CSS, just add the following lines to your `vimrc`:

```vim
let g:syntastic_javascript_checkers = ['wpscripts']
let g:syntastic_css_checkers = ['wpscripts']
```

You’ll obviously need `wp-scripts` in your path, which can be installed as follows:

```bash
npm install @wordpress/scripts
```

This plugin is compatible with:

* JavaScript and TypeScripts
* CSS, SCSS, and LESS

# Maintainers

The project is currently being maintained by [David Aguilera](https://github.com/davilera).

# Credits

This software adds WordPress’ JavaScript linter (`wp-scripts lint-js`) and CSS linter (`wp-scripts lintstyle`) into Syntastic. Since these two linters internally use `eslint` and `stylelint`, Syntastic’s syntax checkers included in the package are based on already existing syntax checkers:

* `eslint`: Maintained by Maksim Ryzhikov. See current [contributors here](https://github.com/vim-syntastic/syntastic/blob/master/syntax_checkers/javascript/eslint.vim).
* `stylelint`: Maintained by Tim Carry. See current [contributors here](https://github.com/vim-syntastic/syntastic/blob/master/syntax_checkers/css/stylelint.vim).

Thank you very much for your amazing work!

# License

This project is distributed under the [GPL v3](https://www.gnu.org/licenses/gpl-3.0.html) or later.
