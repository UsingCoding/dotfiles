terraform {
  required_providers {
    installer = {
      source  = "shihanng/installer"
      version = "~> 0.6.0"
    }
  }
}

resource "installer_brew" "app" {
  for_each = toset(local.apps)
  name = each.value
}

resource "installer_brew" "cask" {
  for_each = toset(local.casks)
  name = each.value
  cask = true
}

provider "installer" {}

# Manual installs
#
# https://github.com/CodeOne45/vex-tui

locals {
  apps = [
    "docker",
    "docker-buildx",
    "docker-compose",
    "age",
    "chezmoi",
    "htop",
    "telnet",
    "age-plugin-se",
    "lima",
    "age-plugin-yubikey",
    "go",
    "just",
    "rclone",
    "opentofu",
    "tree",
    "bat",
    "go-task",
    "k3d",
    "mage",
    "bitwarden-cli",
    "golangci-lint",
    "k9s",
    "restic",
    "wget",
    "goreleaser",
    "kompose",
    "buf",
    "gostore",
    "kubectx",
    "node",
    "yq",
    "gostore-agent",
    "kubernetes-cli",
    "sshpass",
    "helm",
    "kustomize",
    "teleport",
    "yazi",
    "lazygit",
    "helmfile",
    "sevenzip",
    "yt-dlp",
    "ffmpeg", # requires by yt-dlp
    "ripgrep",
    "posting",
    "sshs",
    "autorestic",
    "gdu",
    "bottom",
    # Commented due to installtion issues
    #"tree-sitter",
    "fd",
    "neovim",
    "sendme",
    # https://github.com/Julien-R44/fast-ssh
    # Not avaiable via brew and for darwin arm64
    # cargo install fast-ssh
    "anomalyco/tap/opencode",
    "xh",
    "mkcert",
    "devcockpit",
    "gitlogue",
    "xleak",
    "qqqa",
    "grpcurl",
    "nelm",
    "gromgit/brewtils/taproom",
    "superseedr",
    "mactop",
    "lazyssh",
    "worktrunk",
    "ekphos",
    "mole",
  ]

  casks = [
    "gimp",
    "steam",
    "warp",
    "raycast",
    "aldente",
    "zed",
    "font-0xproto-nerd-font", # nerd-fonts
    # prompts for sudo pass
    # vs-code writes launchctl configs, so brew prompts for sudo pass
    # "visual-studio-code"
    "codex",
    "macwhisper",
    "obsidian",
    "google-chrome",
    "ghostty",
  ]
}
