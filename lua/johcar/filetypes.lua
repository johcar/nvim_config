vim.api.nvim_create_autocmd({"BufRead","BufNewFile"}, {
  pattern = {"*.yml", "*.yaml"},
  callback = function()
    local path = vim.fn.expand("%:p")
    local content = vim.fn.readfile(path)
    local is_ansible = false

    -- 1. Kontrollera mappstruktur
    if path:match("/roles/.+/tasks/") or path:match("/roles/.+/handlers/") or path:match("/playbooks/") then
      is_ansible = true
    else
      -- 2. Kolla första N rader efter typiska Ansible-nycklar
      local top_lines = vim.list_slice(content, 1, 10)
      for _, line in ipairs(top_lines) do
        if line:match("^%s*hosts:") or line:match("^%s*tasks:") or line:match("^%s*roles:") or line:match("^%s*vars:") then
          is_ansible = true
          break
        end
      end
    end

    if is_ansible then
      vim.bo.filetype = "yaml.ansible"
    end
  end
})
