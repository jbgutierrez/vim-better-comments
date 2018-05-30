" =============================================================================
" File:          plugin/better-comments.vim
" Description:   Create more human-friendly comments in your code!
" Author:        Javier Blanco <http://jbgutierrez.info>
" =============================================================================

if ( exists('g:loaded_bettercomments') && g:loaded_bettercomments ) || v:version < 700 || &cp
  finish
endif
let g:loaded_bettercomments = 1

" Functions {{{

function! s:BetterComments()
  let language = substitute(&filetype, "\\..*", "", "")
  if exists("g:bettercomments_skipped") |
    if index(g:bettercomments_skipped, language) > -1 | return | endif
  endif
  if exists("g:bettercomments_included") |
    if index(g:bettercomments_included, language) == -1 | return | endif
  endif

  exe "syn match HighlightBetterComments \"\\*\\s.*\" containedin=".language."MultilineComment,".language."Comment,Comment"
  exe "syn match HighlightBetterComments \"\\* \\*\\s.*\" containedin=".language."DocComment"
  exe "syn match HighlightInLineComments \"[\\*\\/#]\\+ \\* .*\" containedin=".language."LineComment"
  exe "syn match ErrorBetterComments \"[\\*\\/#]\\+\\s*!.*\" containedin=".language."LineComment,".language."MultilineComment,".language."DocComment,Comment" 
  exe "syn match ErrorCommentBetterComments \"! .*\" containedin=".language."Comment"
  exe "syn match QuestionBetterComments \"[\\*\\/#]\\+\\s*?.*\" containedin=".language."LineComment,".language."MultilineComment,".language."DocComment,Comment" 
  exe "syn match QuestionCommentBetterComments \"? .*\" containedin=".language."Comment,".language."Comment,".language."MultilineComment,".language."DocComment,Comment" 
  exe "syn match StrikeoutBetterComments \"\\v(\\/{4}|#{2}|\\\"{2}).+\" containedin=".language."Comment,".language."MultilineComment,".language."DocComment,Comment"
  exe "syn match TodoBetterComments \"[*\/\\\"#]*\\s*TODO:.*\" containedin=".language."LineComment,".language."Comment,".language."MultilineComment,".language."DocComment,Comment"
endfunction

"}}}

" Autocommands {{{

augroup betterCommentsPluginAuto
  autocmd!
  au FileType * call s:BetterComments()
augroup END

" }}}

" Syntax {{{

hi def link ErrorBetterComments WarningMsg
hi def link ErrorCommentBetterComments ErrorBetterComments
hi def link HighlightBetterComments HighlightInLineComments
hi def link HighlightInLineComments Underlined
hi def link QuestionBetterComments Identifier
hi def link QuestionCommentBetterComments QuestionBetterComments
hi def link StrikeoutBetterComments WarningMsg
hi def link TodoBetterComments Type

"}}}

" vim:fen:fdm=marker:fmr={{{,}}}:fdl=0:fdc=1:ts=2:sw=2:sts=2
