vim9script

### plugin/ale
g:ale_disable_lsp = 1
g:ale_sign_error = ''
g:ale_sign_warning = ''
g:ale_echo_msg_error_str = ''
g:ale_echo_msg_warning_str = ''
g:ale_echo_msg_format = '[%severity%][%linter%] %s'

nnoremap <silent> ]e <plug>(ale_next_wrap)
nnoremap <silent> [e <plug>(ale_previous_wrap)


