vim9script

### Plugin/wilder
call wilder#setup({
      \ 'modes': [':', '/', '?'],
      \ 'next_key': '<Tab>',
      \ 'previous_key': '<S-Tab>',
      \ })



call wilder#set_option('renderer', wilder#renderer_mux({
      \ ':': wilder#popupmenu_renderer(),
      \ '/': wilder#wildmenu_renderer(),
      \ }))


call wilder#set_option('renderer', wilder#popupmenu_renderer({
      \ 'left': [
      \   ' ', wilder#popupmenu_devicons(),
      \ ],
      \ 'right': [
      \   ' ', wilder#popupmenu_scrollbar(),
      \ ],
      \ }))

# 'border'            : 'single', 'double', 'rounded' or 'solid'
#                     : can also be a list of 8 characters,
#                     : see :h wilder#popupmenu_border_theme() for more details
# 'highlights.border' : highlight to use for the border`
# call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_border_theme({
      # \ 'highlights': {
      # \   'border': 'Normal',
     # \ },
      # \ 'border': 'rounded',
      # \ })))


