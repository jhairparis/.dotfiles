# Nvim Shortcuts

Enter -> ``<CR>``

| Mode Mapping | Command       | Description                     | Internal Command                                                                                                               |
| ------------ | :----: | ------------------------------- | ------------------------------------------------------------------------------------------------------------------------------ |
| n            | ``<C-A>``     | Copy all document               | ``:%y+<CR>``                                                                                                                   |
| n            | ``<C-B>``     | scroll to top 36 lines          | ``<Cmd>lua require('neoscroll').scroll(-vim.api.nvim_win_get_height(0), true, 450)<CR>``                                       |
| n            | ``<C-F>``     | scroll to down 36 lines         | ``<Cmd>lua require('neoscroll').scroll(vim.api.nvim_win_get_height(0), true, 450)<CR>``                                        |
| n            | ``<C-U>``     | scroll to top 18 lines          | ``<Cmd>lua require('neoscroll').scroll(-vim.wo.scroll, true, 250)<CR>``                                                        |
| n            | ``<C-D>``     | scroll down 18 lines            | ``<Cmd>lua require('neoscroll').scroll(vim.wo.scroll, true, 250)<CR>``                                                         |
| n            | ``<C-Y>``     | scroll top without move cursor  | ``<Cmd>lua require('neoscroll').scroll(-0.10, false, 100)<CR>``                                                                |
| n            | ``<C-E>``     | scroll down without move cursor | ``<Cmd>lua require('neoscroll').scroll(0.10, false, 100)<CR>``                                                                 |
| x            | ``<C-B>``     | scroll to top 36 lines          | ``<Cmd>lua require('neoscroll').scroll(-vim.api.nvim_win_get_height(0), true, 450)<CR>``                                       |
| x            | ``<C-F>``     | scroll to down 36 lines         | ``<Cmd>lua require('neoscroll').scroll(vim.api.nvim_win_get_height(0), true, 450)<CR>``                                        |
| x            | ``<C-U>``     | scroll to top 18 lines          | ``<Cmd>lua require('neoscroll').scroll(-vim.wo.scroll, true, 250)<CR>``                                                        |
| x            | ``<C-D>``     | scroll down 18 lines            | ``<Cmd>lua require('neoscroll').scroll(vim.wo.scroll, true, 250)<CR>``                                                         |
| x            | ``<C-Y>``     | scroll top without move cursor  | ``<Cmd>lua require('neoscroll').scroll(-0.10, false, 100)<CR>``                                                                |
| x            | ``<C-E>``     | scroll down without move cursor | ``<Cmd>lua require('neoscroll').scroll(0.10, false, 100)<CR>``                                                                 |
| s            | ``<Tab>``     | Compleat text                   | ``v:lua.tab_complete()``                                                                                                       |
| n            | ``<Tab>``     | Next Buffer "Cycle"             | ``:BufferLineCycleNext<CR>``                                                                                                   |
| n            | ``<C-N>``     | open/close Tree explorer        | ``:NvimTreeToggle<CR>``                                                                                                        |
| n            | ``<C-S>``     | Save buffer                     | ``:w <CR>``                                                                                                                    |
| n            | ``<C-T>b``    | New buffer  in tab              | ``:tabnew<CR>``                                                                                                                |
| n            | ``<Esc>``     | remove highlight                | ``:noh<CR>``                                                                                                                   |
| n            | ``<Space>?``  | search commands                 | ``:<C-U>Cheatsheet<CR>``                                                                                                       |
| n            | ``<Space>9``  | go to buffer 9                  | ``:lua require"bufferline".go_to_buffer(9)<CR>``                                                                               |
| n            | ``<Space>8``  | go to buffer  8                 | ``:lua require"bufferline".go_to_buffer(8)<CR>``                                                                               |
| n            | ``<Space>7``  | go to buffer 7                  | ``:lua require"bufferline".go_to_buffer(7)<CR>``                                                                               |
| n            | ``<Space>6``  | go to buffer 6                  | ``:lua require"bufferline".go_to_buffer(6)<CR>``                                                                               |
| n            | ``<Space>5``  | go to buffer 5                  | ``:lua require"bufferline".go_to_buffer(5)<CR>``                                                                               |
| n            | ``<Space>4``  | go to buffer 4                  | ``:lua require"bufferline".go_to_buffer(4)<CR>``                                                                               |
| n            | ``<Space>3``  | go to buffer 3                  | ``:lua require"bufferline".go_to_buffer(3)<CR>``                                                                               |
| n            | ``<Space>2``  | go to buffer 2                  | ``:lua require"bufferline".go_to_buffer(2)<CR>``                                                                               |
| n            | ``<Space>1``  | go to buffer 1                  | ``:lua require"bufferline".go_to_buffer(1)<CR>``                                                                               |
| n            | ``<Space>gb`` | open git  blame                 | ``:Git blame<CR>``                                                                                                             |
| n            | ``<Space>gl`` | no                              | ``:diffget //3<CR>``                                                                                                           |
| n            | ``<Space>gh`` | no                              | ``:diffget //2<CR>``                                                                                                           |
| n            | ``<Space>gs`` | open git info                   | ``:Git<CR>``                                                                                                                   |
| n            | ``<Space>zf`` | focus view                      | ``:TZFocus<CR>``                                                                                                               |
| n            | ``<Space>zm`` | minimalist view                 | ``:TZMinimalist<CR>``                                                                                                          |
| n            | ``<Space>zz`` | view without bar bottom         | ``:TZAtaraxis<CR>``                                                                                                            |
| n            | ``<Space>fp`` | no                              | ``:Telescope media_files <CR>``                                                                                                |
| v            | ``<Space>/``  | Comment lines toggle            | ``:CommentToggle<CR>``                                                                                                         |
| n            | ``<Space>/``  | Comment line toggle             | ``:CommentToggle<CR>``                                                                                                         |
| n            | ``<Space>s``  | session save                    | ``:SessionSave<CR>``                                                                                                           |
| n            | ``<Space>l``  | session  load                   | ``:SessionLoad<CR>``                                                                                                           |
| n            | ``<Space>bm`` | Open Marks                      | ``:DashboardJumpMarks<CR>``                                                                                                    |
| n            | ``<Space>fn`` | new file                        | ``:DashboardNewFile<CR>``                                                                                                      |
| n            | ``<Space>db`` | Open Dashboard                  | ``:Dashboard<CR>``                                                                                                             |
| n            | ``<Space>fm`` | Format document                 | ``:Neoformat<CR>``                                                                                                             |
| n            | ``<Space>uk`` | search command                  | ``:lua require('cheatsheet').show_cheatsheet_telescope{bundled_cheatsheets = false, bundled_plugin_cheatsheets = false }<CR>`` |
| n            | ``<Space>dk`` | search command                  | ``:lua require('cheatsheet').show_cheatsheet_telescope()<CR>``                                                                 |
| n            | ``<Space>th`` | set theme nvim                  | ``:Telescope themes<CR>``                                                                                                      |
| n            | ``<Space>fo`` | open menu of old files open     | ``:Telescope oldfiles<CR>``                                                                                                    |
| n            | ``<Space>fh`` | help  tags telescope            | ``:Telescope help_tags<CR>``                                                                                                   |
| n            | ``<Space>fb`` | Telescope buffers               | ``:Telescope buffers<CR>``                                                                                                     |
| n            | ``<Space>ff`` | Find files                      | ``:Telescope find_files <CR>``                                                                                                 |
| n            | ``<Space>cm`` | Git commits                     | ``:Telescope git_commits <CR>``                                                                                                |
| n            | ``<Space>gt`` | git status                      | ``:Telescope git_status <CR>``                                                                                                 |
| n            | ``<Space>fw`` | no                              | ``:Telescope live_grep<CR>``                                                                                                   |
| n            | ``<Space>uu`` | update Chad                     | ``:NvChadUpdate<CR>``                                                                                                          |
| n            | ``<Space>h``  | Terminal in horizontal          | ``:execute 15 .. 'new +terminal' \| let b:term_type = 'hori' \| startinsert <CR>``                                             |
| n            | ``<Space>v``  | Terminal in vertical            | ``:execute 'vnew +terminal'  \| let b:term_type = 'vert' \| startinsert <CR>``                                                 |
| n            | ``<Space>w``  | Terminal in new tab             | ``:execute 'terminal' \| let b:term_type = 'wind' \| startinsert <CR>``                                                        |
| n            | ``<Space>W``  | no                              | ``:Telescope terms <CR>``                                                                                                      |
| n            | ``<Space>n``  | hidden line number              | ``:set nu!<CR>``                                                                                                               |
| n            | ``T``         | new buffer                      | ``:enew<CR>``                                                                                                                  |
| n            | ``X``         | close buffer                    | ``:lua require('utils').close_buffer() <CR>``                                                                                  |
|              | ``j``         | down                            | ``v:count ? "j" : "gj"``                                                                                                       |
|              | ``k``         | up                              | ``v:count ? "k" : "gk"``                                                                                                       |
| v            | ``p``         | paste                           | ``"_dP``                                                                                                                       |
| x            | ``zt``        | scroll to top                   | ``<Cmd>lua require('neoscroll').zt(250)<CR>``                                                                                  |
| n            | ``zt``        | scroll to top                   | ``<Cmd>lua require('neoscroll').zt(250)<CR>``                                                                                  |
| x            | ``zb``        | scroll to  down                 | ``<Cmd>lua require('neoscroll').zb(250)<CR>``                                                                                  |
| n            | ``zb``        | scroll to down                  | ``<Cmd>lua require('neoscroll').zb(250)<CR>``                                                                                  |
| n            | ``zz``        | scroll to center                | ``<Cmd>lua require('neoscroll').zz(250)<CR>``                                                                                  |
| x            | ``zz``        | scroll to center                | ``<Cmd>lua require('neoscroll').zz(250)<CR>``                                                                                  |