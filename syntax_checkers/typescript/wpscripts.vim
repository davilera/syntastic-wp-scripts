"============================================================================
"File:        wpscripts.vim
"Description: Javascript syntax checker - using wp-scripts
"Maintainer:  David Aguilera <david.aguilera.moncusi at gmail dot com>
"License:     This program is free software. It comes without any warranty,
"             to the extent permitted by applicable law. You can redistribute
"             it and/or modify it under the terms of the Do What The Fuck You
"             Want To Public License, Version 2, as published by Sam Hocevar.
"             See http://sam.zoy.org/wtfpl/COPYING for more details.
"============================================================================

if exists('g:loaded_syntastic_typescript_wpscripts_checker')
    finish
endif
let g:loaded_syntastic_typescript_wpscripts_checker = 1

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'typescript',
    \ 'name': 'wpscripts',
    \ 'redirect': 'javascript/wpscripts'})

