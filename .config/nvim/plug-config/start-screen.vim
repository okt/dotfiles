" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_session_dir = '~/.config/nvim/sessions'

let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
          \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

          " \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },


let g:startify_bookmarks = [
            \ { 'r': '~/src/rust' },
            \ { 'v': '~/src/vue' },
            \ '~/repos',
            \ '~/.config/kitty/kitty.conf',
            \ '~/.config/polybar/config',
            \ '~/.zshrc',
            \ ]

let g:startify_custom_header = [
      \ ' MMMMMMMMMMM MMMMMMMMMMMM MMMMMMMMMMM MMMMMMMMMMM MMMM MMMMMMMMMMMMMM  ',
      \ ' MM"""""""`YM MM""""""""`M MMP"""""YMM M""MMMMM""M M""M M"""""``"""`YM ',
      \ ' MM  mmmm.  M MM  mmmmmmmM M` .mmm. `M M  MMMMM  M M  M M  mm.  mm.  M ',
      \ ' MM  MMMMM  M M`      MMMM M  MMMMM  M M  MMMMP  M M  M M  MMM  MMM  M ',
      \ ' MM  MMMMM  M MM  MMMMMMMM M  MMMMM  M M  MMMM` .M M  M M  MMM  MMM  M ',
      \ ' MM  MMMMM  M MM  MMMMMMMM M. `MMM` .M M  MMP` .MM M  M M  MMM  MMM  M ',
      \ ' MM  MMMMM  M MM        .M MMb     dMM M     .dMMM M  M M  MMM  MMM  M ',
      \ ' MMMMMMMMMMM MMMMMMMMMMMM MMMMMMMMMMM MMMMMMMMMMM MMMM MMMMMMMMMMMMMM  ',
      \ '                                                  2020 okt    YARP ~   '
      \ ]
