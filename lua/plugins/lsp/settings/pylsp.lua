return {
  settings = {
    pylsp = {
      plugins = {
        flake8 = {
          enabled = true,
          maxLineLength = 100,
        },
        pycodestyle = {
          enabled = false
        },
        pylint = {
          enabled = true
        },
        pyflakes = {
          enabled = false
        }
      }
    }
  },
}
