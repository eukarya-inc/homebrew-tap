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

| Formula | Description | Version |
|---------|-------------|---------|
| [infradrift](https://github.com/eukarya-inc/infradrift) | Detect infrastructure drift from Terraform/OpenTofu plans | v0.2.0 |
| [git-cascade](https://github.com/eukarya-inc/git-cascade) | Hierarchical compliance enforcement for GitHub Organizations. Define global security policies in a central repository with granular, developer-friendly overrides in individual repos. | v0.2.0 |


## Adding New Formulas

To distribute a new tool via this tap:

1. Create a Ruby formula file under `Formula/<tool-name>.rb`.
2. Define the `desc`, `homepage`, `license`, download URLs (with SHA256 checksums), and `install`/`test` blocks.
3. Commit and push to `main` -- users will pick it up on their next `brew update`.

Formulas support platform-specific binaries (macOS Intel/ARM, Linux Intel/ARM) via `on_macos`/`on_linux` and `Hardware::CPU` guards. See `Formula/infradrift.rb` for a reference.

## License

[MIT](LICENSE)
