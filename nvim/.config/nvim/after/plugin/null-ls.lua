local null_ls = require('null-ls')

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettier.with({
      extra_args = {
        "--single-quote",
        "--jsx-single-quote",
        "--no-bracket-spacing",
        "--parser typescript",
        "--quote-props consistent",
        "--experimental-ternaries",
      }
    })
  }
})
