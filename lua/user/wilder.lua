local wilder = require('wilder')
wilder.setup({ modes = { ':', '/', '?' } })

wilder.set_option('pipeline', {
  wilder.branch(
    wilder.cmdline_pipeline(),
    wilder.search_pipeline()
  ),
})
wilder.set_option('renderer', wilder.renderer_mux({
  [':'] = wilder.popupmenu_renderer(
    wilder.popupmenu_border_theme({
      -- 'single', 'double', 'rounded' or 'solid'
      -- can also be a list of 8 characters, see :h wilder#popupmenu_border_theme() for more details
      border = 'rounded',
      highlighter = wilder.basic_highlighter(),
      left = { ' ', wilder.popupmenu_devicons() },
      right = { ' ', wilder.popupmenu_scrollbar() },
    })
  ),
  ['/'] = wilder.wildmenu_renderer({
    highlighter = wilder.basic_highlighter(),
  }),
}))
