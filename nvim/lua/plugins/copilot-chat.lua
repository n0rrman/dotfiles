return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    enabled = true,
    cmd = {
        "CopilotChat",
        "CopilotChatToggle",
    },
    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
            model = "claude-3.5-sonnet",
            window = {
                layout = "float",
                width = 0.6,
                height = 0.7,
            },
    },
    -- See Commands section for default commands if you want to lazy load on them
  },
}
