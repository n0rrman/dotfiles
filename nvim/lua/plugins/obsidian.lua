return {
  "epwalsh/obsidian.nvim",
  version = "*",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "main",
        path = "~/Obsidian/main",
      },
    },
    ui = {
      checkboxes = {
        [" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
        ["x"] = { char = "", hl_group = "ObsidianDone" },
      },
    },
    templates = {
        folder = "template",
        date_format = "%Y-%m-%d",
        time_format = "%H:%M",
        substitutions = {},
    },
    daily_notes = {
        folder = "daily",
    }
  },
}
