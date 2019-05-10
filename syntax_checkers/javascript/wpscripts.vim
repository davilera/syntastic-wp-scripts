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

if exists('g:loaded_syntastic_javascript_wpscripts_checker')
    finish
endif
let g:loaded_syntastic_javascript_wpscripts_checker = 1

if !exists('g:syntastic_javascript_wpscripts_sort')
    let g:syntastic_javascript_wpscripts_sort = 1
endif

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_javascript_wpscripts_IsAvailable() dict
    return !executable(self.getExec())
endfunction

function! SyntaxCheckers_javascript_wpscripts_GetLocList() dict
    let makeprg = self.makeprgBuild({ 'exe': 'wp-scripts', 'args_before': 'lint-js -f compact' })

    let errorformat =
        \ '%E%f: line %l\, col %c\, Error - %m,' .
        \ '%W%f: line %l\, col %c\, Warning - %m'

    let loclist = SyntasticMake({
        \ 'makeprg': makeprg,
        \ 'errorformat': errorformat,
        \ 'postprocess': ['guards'] })

    for e in loclist
        let e['col'] += 1
    endfor

    return loclist
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'javascript',
    \ 'name': 'wpscripts'})

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: set sw=4 sts=4 et fdm=marker:
