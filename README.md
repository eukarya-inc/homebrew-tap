# Eukarya Homebrew Tap

A [Homebrew](https://brew.sh) tap for tools built by [Eukarya](https://github.com/eukarya-inc).

## Usage

### Add the tap

```sh
brew tap eukarya-inc/tap
```

### Install a formula

```sh
brew install <formula>
```

### Update

```sh
brew update && brew upgrade
```

## Available Formulas

| Formula | Description |
|---------|-------------|
| [infradrift](https://github.com/eukarya-inc/infradrift) | Detect infrastructure drift from Terraform/OpenTofu plans |
| [git-cascade](https://github.com/eukarya-inc/git-cascade) | Hierarchical compliance checker for GitHub Organizations. |


## Available Casks

macOS desktop apps, distributed as Homebrew casks.

| Cask | Description |
|------|-------------|
| [honyo](https://github.com/eukarya-inc/honyo) | AI-powered instant translation with double Ctrl/Cmd+C |

Install:

```sh
brew install --cask eukarya-inc/tap/honyo
xattr -dr com.apple.quarantine /Applications/Honyo.app
```

The `xattr` step is required because Honyo is not yet notarized — without it, macOS Gatekeeper blocks the app from launching. (The former `--no-quarantine` install flag was removed in recent Homebrew versions.)


## Adding New Formulas

To distribute a new tool via this tap:

1. Create a Ruby formula file under `Formula/<tool-name>.rb`.
2. Define the `desc`, `homepage`, `license`, download URLs (with SHA256 checksums), and `install`/`test` blocks.
3. Commit and push to `main` -- users will pick it up on their next `brew update`.

Formulas support platform-specific binaries (macOS Intel/ARM, Linux Intel/ARM) via `on_macos`/`on_linux` and `Hardware::CPU` guards. See `Formula/infradrift.rb` for a reference.

## License

[MIT](LICENSE)
