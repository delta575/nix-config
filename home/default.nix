{ pkgs, lib, ... }:

{
  imports = [
    # ./apps/bash.nix
    ./apps/zsh.nix
    ./apps/git.nix
    ./apps/gh.nix
    ./apps/direnv.nix
    ./apps/bun.nix
    ./apps/btop.nix
    ./apps/lsd.nix
    ./apps/poetry.nix
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.username = "delta";
  home.homeDirectory = lib.mkDefault "/home/delta";

  home.packages = with pkgs; [
    # System
    neofetch
    _7zz
    dnsutils

    # Development
    nodejs_24
    pnpm
    python3
    libpqxx

    # Tools
    claude-monitor
    jq
    nixd
    nixfmt-rfc-style
  ];

  home.sessionPath = [
    "$HOME/.bun/bin",
    "$HOME/.local/share/pnpm",
    "$HOME/.local/bin"
  ];

  home.shellAliases = {
    nix-clean = "nix-collect-garbage -d";
  };

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  # https://nixos.org/manual/nixos/unstable/release-notes.html
  home.stateVersion = "25.11";
}
