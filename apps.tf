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

locals {
  apps = [
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
    "vim",
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
  ]

  casks = [
    "bitwarden",
    "gimp",
    "orbstack",
    "steam",
    "warp",
    "cursor",
    "macfuse",
    "raycast",
    # vs-code writes launchctl configs, so brew prompts for sudo pass
    # "visual-studio-code"
  ]
}
