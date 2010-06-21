" Fun LaTex through texshop
function! SRJ_runLatex()
  if &ft != 'tex'
    echo "calling srj_runLatex from a non-tex file"
    return ''
  end

  :w

  let thePath = getcwd() . '/' . expand("%")

  let execString = 'osascript -e "tell app \"TeXShop\"" -e "set theDoc to open ((POSIX file \"'.thePath.'\") as alias)" -e "try" -e "tell theDoc to latexinteractive" -e "on error" -e "set theDoc to front document" -e "tell theDoc to latexinteractive" -e "end try" -e "end tell"'

  exec 'silent! !'.execString
  return ''
endfunction

no <expr> <leader>rr SRJ_runLatex()
vn <expr> <leader>rr SRJ_runLatex()
ino <expr> <leader>rr  SRJ_runLatex()
