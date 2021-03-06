if has('win16') || has('win32') || has('win64') || has('win95')
  if exists('+renderoptions')
    " If 'renderoptions' option exists,
    set renderoptions=type:directx,renmode:5
    " ... and if "Ricty_Diminished" font is installed,
    " enable DirectWrite.
    try
      set gfn=Ricty_Diminished_Discord:h14:cSHIFTJIS
    catch | endtry
  endif
elseif has('mac')    " Mac
  set guifont=Osaka－等幅:h14
  set printfont=Osaka－等幅:h14
else    " *nix OS
  try
    set guifont=Monospace\ 12
    set printfont=Monospace\ 12
    set linespace=0
  catch
    set guifont=Monospace\ 12
    set printfont=Monospace\ 12
    set linespace=4
  endtry
endif
