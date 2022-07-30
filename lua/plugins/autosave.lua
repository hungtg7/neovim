local status_ok, autosave = pcall(require, "autosave")
if not status_ok then
  return
end

autosave.setup({
  enabled = true,
  execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
  events = {"InsertLeave"},
  conditions = {
    exists = true,
    filename_is_not = {},
    filetype_is_not = {},
    modifiable = true
  },
  write_all_buffers = false,
  on_off_commands = true,
  clean_command_line_interval = 0,
  debounce_delay = 135
})

autosave.hook_after_off = function ()
	print("Autosave is now off!")
end

autosave.hook_after_on = function ()
	print("Autosave is now on!")
end
