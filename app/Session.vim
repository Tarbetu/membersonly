let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Genel/Rails/membersonly/app
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 controllers/posts_controller.rb
badd +1 views/posts/new.html.haml
badd +5 models/post.rb
badd +1 ~/Genel/Rails_proceleri/members-only/db/schema.rb
badd +16 views/posts/index.html.haml
badd +1 views/layouts/_navbar.html.haml
badd +12 views/layouts/application.html.haml
badd +1 views/posts/_new_post.html.haml
badd +18 views/posts/_post.html.haml
badd +6 views/devise/registrations/new.html.haml
badd +1 views/devise/registrations/edit.html.haml
badd +18 views/devise/shared/_links.html.haml
badd +1 views/devise/sessions/new.html.haml
badd +6 views/devise/passwords/new.html.haml
badd +1 assets/stylesheets/posts.scss
badd +7 assets/stylesheets/posts.sass
badd +3 controllers/pages_controller.rb
badd +4 ~/Genel/Rails/membersonly/config/routes.rb
badd +1 views/pages/about.html.erb
badd +2 views/pages/about.html.haml
badd +8 models/user.rb
badd +1 views/posts/show.html.haml
badd +7 controllers/application_controller.rb
badd +0 ../db/schema.rb
badd +0 controllers/likes_controller.rb
argglobal
%argdel
$argadd controllers/posts_controller.rb
set stal=2
tabnew
tabnew
tabnew
tabnew
tabnew
tabrewind
edit controllers/posts_controller.rb
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 4 - ((3 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 4
normal! 011|
tabnext
edit controllers/likes_controller.rb
argglobal
balt controllers/posts_controller.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 2 - ((1 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 038|
tabnext
edit views/posts/_post.html.haml
argglobal
balt views/posts/show.html.haml
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 20 - ((19 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 20
normal! 067|
tabnext
edit assets/stylesheets/posts.sass
argglobal
balt views/posts/_post.html.haml
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 25 - ((24 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 25
normal! 03|
tabnext
edit models/user.rb
argglobal
balt views/posts/_post.html.haml
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 6 - ((5 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 6
normal! 03|
tabnext
edit ~/Genel/Rails/membersonly/config/routes.rb
argglobal
balt views/posts/_post.html.haml
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 4 - ((3 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 4
normal! 05|
tabnext 3
set stal=1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0&& getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOF
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
