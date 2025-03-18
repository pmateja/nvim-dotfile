return {
  "frankroeder/parrot.nvim",
  dependencies = { "ibhagwan/fzf-lua", "nvim-lua/plenary.nvim" },
  lazy = true, -- Only load when needed
  event = "VeryLazy", -- Load after startup delay
  config = function()
    local ok, parrot = pcall(require, "parrot")
    if not ok then
      vim.notify("parrot.nvim not found", vim.log.levels.WARN)
      return
    end

    local api_key = os.getenv("PERPLEXITY_API_KEY")
    if not api_key or api_key == "" then
      vim.notify("PERPLEXITY_API_KEY is not set", vim.log.levels.ERROR)
      return
    end

    parrot.setup {
      providers = {
        pplx = {
          api_key = api_key,
        },
      },
    }
  end,
}

