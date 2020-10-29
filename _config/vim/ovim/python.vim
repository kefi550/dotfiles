function! s:findRoot(target)
  let dir = getcwd()
  while 1
    let files = split(globpath(l:dir, '*'), '\n')
    for f in l:files
        if a:target == fnamemodify(f, ':t')
            return l:dir
        endif
    endfor
    if l:dir == "/"
      break
    endif
    let dir = fnamemodify(l:dir, ':h')
  endwhile
  return ""
endfunction

function! s:setVenv()
  let dir = s:findRoot('Pipfile')
  echo l:dir
  if dir != ""
    let $VIRTUAL_ENV = trim(system("cd " . l:dir . "; pipenv --venv"))
  endif
endfunction

autocmd FileType python call s:setVenv()
