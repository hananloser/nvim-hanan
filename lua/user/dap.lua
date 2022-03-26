local dap_status_oke, dap = pcall(require, "dap")
-- Bila Dap Tidak Dapat Di Loads
if not dap_status_oke then return end

-- Pinjam Debug Extension Dari VS Code 
dap.adapters.php = {
  type = 'executable',
  command = 'node',
  args = {'/Users/hanan/.debugger/vscode-php-debug/out/phpDebug.js'}
}

dap.configurations.php = {
  {
    type = 'php',
    request = 'launch',
    name = 'Listen for xdebug',
    hostname = '0.0.0.0',
    port = 9003,
    stopOnEntry = false,
    serverSourceRoot = '/Users/hanan/projects/salazar/loyalty-system',
    localSourceRoot = '/Users/hanan/projects/salazar/loyalty-system'
  }
}
