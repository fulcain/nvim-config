This Markdown file details all the packages used in my configuration that need to be installed outside of Vim, along with some configuration details.

- **Note**: For the command line I deleted the `:` so you can easily copy and paste the things inside the code block.

The package managers I use are as follows:

- `brew` for macOS
- `apt` and `apt-get` for Linux (Ubuntu)
- `choco` for Windows
- I use `lazy` as my package manager for Vim itself.

## Installation

### Windows

Install Neovim with WinGet:

```powershell
winget install --id Neovim.Neovim --exact
```

Install Python as well; Mason needs it to install the configured Python tools (`black`, `flake8`, `isort`, and `mypy`):

```powershell
winget install --id Python.Python.3.13 --exact
```

Tree-sitter on Windows needs a C compiler and `tree-sitter-cli`. Install GCC with WinGet:

```powershell
winget install --id BrechtSanders.WinLibs.POSIX.UCRT --exact
```

Install the prebuilt Tree-sitter CLI and add it to your user PATH (copy and paste the whole block):

```powershell
$version = "0.27.1"
$zip = "$env:TEMP\tree-sitter-cli-$version-windows-x64.zip"
$installDir = "$env:LOCALAPPDATA\Programs\tree-sitter-cli\bin"
$url = "https://github.com/tree-sitter/tree-sitter/releases/download/v$version/tree-sitter-cli-windows-x64.zip"
$expectedHash = "de043e4c289efcef7981df99988300f23763befdeb36abf7c1898f080c478424"

Invoke-WebRequest -Uri $url -OutFile $zip
if ((Get-FileHash $zip -Algorithm SHA256).Hash.ToLowerInvariant() -ne $expectedHash) {
    throw "Tree-sitter CLI download checksum did not match."
}

New-Item -ItemType Directory -Force -Path $installDir | Out-Null
Expand-Archive -LiteralPath $zip -DestinationPath $installDir -Force
$userPath = [Environment]::GetEnvironmentVariable("Path", "User")
$pathEntries = @($userPath -split ";" | Where-Object { $_ })
if ($pathEntries -notcontains $installDir) {
    [Environment]::SetEnvironmentVariable("Path", (($pathEntries + $installDir) -join ";"), "User")
}
```

Close and reopen PowerShell, then confirm both prerequisites are available:

```powershell
gcc --version
tree-sitter --version
```

Restart Neovim after that; it will install the configured parsers automatically.

The WinGet installer normally puts Neovim in `C:\Program Files\Neovim\bin`. If `nvim` is not recognized in PowerShell, add that directory to your **user** PATH:

```powershell
$nvimBin = "$env:ProgramFiles\Neovim\bin"
$userPath = [Environment]::GetEnvironmentVariable("Path", "User")
$pathEntries = @($userPath -split ";" | Where-Object { $_ })

if ((Test-Path "$nvimBin\nvim.exe") -and $pathEntries -notcontains $nvimBin) {
    $newPath = (@($pathEntries) + $nvimBin) -join ";"
    [Environment]::SetEnvironmentVariable("Path", $newPath, "User")
}
```

Close and reopen your terminal, then verify the installation:

```powershell
nvim --version
```

To install this config on a fresh Windows setup, clone it into Neovim's config directory (make sure the directory does not already contain a config):

```powershell
git clone https://github.com/fulcain/nvim-config "$env:LOCALAPPDATA\nvim"
```

### macOS

```bash
brew install neovim
```

### Linux (Ubuntu)

```bash
sudo apt install neovim
```

## Neovim Directory

Usually, you must create Neovim files in the provided paths.

### Windows

```bash
C:\Users\[userName]\AppData\Local\nvim
```

### macOS and Linux

```bash
~/.config/nvim
```

## Dependencies
For Windows:

```bash
choco install fd ripgrep yarn unzip wget gzip 7zip powershell-core go rust lua luarocks ruby php composer julia python -y
```

For macOS:

```bash
brew install fd ripgrep -y
```

For Linux:

```bash
sudo apt install fd-find
sudo apt-get install ripgrep
```

## Spell Checker for Neovim

```lua
{ 'neoclide/coc.nvim', branch='release' }
```

Then install the spell-checker using this command in your Neovim command mode:

```bash
CocInstall coc-spell-checker coc-actions coc-json coc-tsserver
```

Full Docs: [https://github.com/iamcco/coc-spell-checker](https://github.com/iamcco/coc-spell-checker)

To repair:

```bash
call coc#util#install()
```

# Mason

The LSP and linters installed using Mason in Neovim itself. You can type

```bash
Mason
```

To open Mason, then use `/` to search for the following packages

- `css-lsp`
- `prettier`
- `tailwindcss-language-server`
- `typescript-language-server`
