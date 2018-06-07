" Define NERDTree key mappings.
call NERDTreeAddKeyMap({
      \ 'key':      '<2-LeftMouse>',
      \ 'scope':    'FileNode',
      \ 'callback': 'ChooseWinOpen',
      \ 'override': 1
      \ })

call NERDTreeAddKeyMap({
      \ 'key':      g:NERDTreeMapActivateNode,
      \ 'scope':    'FileNode',
      \ 'callback': 'ChooseWinOpen',
      \ 'override': 1
      \ })


" Select the window where to open the file.
" Use the 'choosewin' plugin if it is loaded.
" Else ask for a user input.
"
function! ChooseWinOpen(node) abort
  " It is necessary to jump back the NERDTree window, cause local buffer
  " variables are required for the following procedure.
  let l:nerdwindow = win_getid()

  " Check if choosewin has been loaded.
  if exists('g:loaded_choosewin')
    call choosewin#start(range(1, winnr('$')))

  else
    " Require user input.
    let l:winnr =  input('Window number to open the file: ') 

    " Convert the window number to a window id if it exists.
    windo if winnr() ==? l:winnr | let l:winid = win_getid() | endif

    " Check if a window could been found with the given number.
    if exists('l:winid')
      " Jump to the window to mark it for NERDTree as the last active one.
      call win_gotoid(l:winid)
      unlet l:winid

    " No window with the given number could been found, abort.
    else
      echohl WarningMsg
      echo 'Could not found a window with the number ' . l:winnr . '!'
      echohl None
      return
    endif
  endif

  " Jump back to the NERDTree window and continue to open the file.
  call win_gotoid(l:nerdwindow) 
  call a:node.activate({'reuse': 'all', 'where': 'p'})
endfunction
