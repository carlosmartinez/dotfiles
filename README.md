# Dotfiles

My personal configuration files managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Structure

Each directory represents a "package" that can be independently installed:

- `nvim/` - Neovim configuration (LazyVim)
- `markdownlint/` - Markdown linting rules
- `git/` - Git configuration
- `zsh/` - Zsh shell configuration

## Installation

### Prerequisites

```bash
brew install stow
```

### Fresh Install

Clone this repo, navigate to the dotfiles dir and install all packages:

```bash
stow */
```

### Uninstall

Remove symlinks for a package:

```bash
cd ~/dotfiles-new
stow -D nvim     # Remove Neovim config symlinks
```

## Adding New Configs

1. Create a new directory for the package: `mkdir mynewconfig`
2. Mirror the home directory structure inside it:
   - For `~/.config/foo`, create `mynewconfig/.config/foo`
   - For `~/.foorc`, create `mynewconfig/.foorc`
3. Install with: `stow mynewconfig`

## Notes

- Stow creates symlinks from `~` to files in this repo
- The directory structure inside each package mirrors your home directory
- Changes to files are immediately reflected in the repo (they're symlinked)
- Remember to commit and push changes to keep your dotfiles backed up
