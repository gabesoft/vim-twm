" Layouts
"
" Events
" - open
"   - WinEnter, BufWinEnter
"   - http://vim.wikia.com/wiki/Detect_window_creation_with_WinEnter
"   - au BufWinEnter * if &l:buflisted || &l:filetype == 'help' | call DWM_AutoEnter() | endif
" - close
"   - BufWinLeave, WinLeave, BufHidden
" - resize
"   - VimResized
" - see also
"   - :resize
"   - :vertical resize
"
" Questions
" - how do we deal with windows such as nerdtree or tagbar?
" - how do we describe a layout
" - what are the operations specific to a layout
"
" Goals
" - allow multiple layouts and make it easy to add new ones
" - the relative window order should never change except by user
" - should allow for easy enable/disable (for cases like vimdiff, etc)
" - maybe allow some windows to be outside of the managed windows
"   - for windows such as nerdtree, tagbar
"   - maybe have a list of excluded windows
"   - the excluded windows must be to the right/left/top/bottom
"     of the managed area
"
" - provide an extensive set of navigation/move/focus commands
"   - window navigation
"   - window cycle
"   - window move
"   - window to master
"   - focus master
"   - focus any slave window
"
" - master resize
" - use the golden ratio where possible
"   - let s:golden_ratio = 1.61803398875
"   - should be used to resize the master vs slaves (optional)
"   - https://github.com/zhaocai/GoldenView.Vim<Plug>(incsearch-nohlsearch)
"
" - Layout functionality
"   - add window
"   - remove window
"   - move window
"   - cycle clockwise, counter-clockwise
"   - focus window
"   - promote window to master
"   - resize windows
"
"   - the primary window maintains a golden ratio compared to the secondary
"   windows (viewed as a block)
"   - secondary windows should be re-orderable
"   - the primary window should be swappable with any secondary window
"
" - Layout data
"   - an ordered list of secondary windows
"   - a primary window
"
" - Terminology
"   - primary window - a window that gets special treatment compared to the
"   others, this is the main window being edited
"   - secondary window - a window that is visible but does not have central
"   focus
