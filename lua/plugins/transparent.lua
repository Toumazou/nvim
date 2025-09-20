return {
  "tribela/transparent.nvim",
  event = "VimEnter",
  config = function()
    require("transparent").setup({
      auto = true,
      extra_groups = {},  -- Add any highlight groups you want to make transparent
      excludes = {},       -- Exclude filetypes or plugins you don't want transparent
    })
  end
}
