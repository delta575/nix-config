{ pkgs, lib, ... }:

{
  # ubuntu-openclaw: headless server for AI agents (OpenClaw, Claude Code, etc.)
  # Uses GitHub App installation tokens instead of SSH keys for git auth
  imports = [ ./linux.nix ];

  # This server is permanently headless and does not need host GPU integration.
  targets.genericLinux.gpu.enable = false;

  home.packages = with pkgs; [
    # Required by Codex sandboxing on generic Linux.
    bubblewrap

    # Required to build native Node.js dependencies during T3 updates.
    gnumake
    gcc
  ];

  programs.git = {
    signing = {
      # Agents don't have the SSH key; sign manually with -S when needed
      signByDefault = lib.mkForce false;
    };

    settings = {
      credential = {
        helper = lib.mkForce "/home/delta/.local/bin/git-credential-github-app";
      };

      # Rewrite SSH GitHub URLs to HTTPS so the credential helper works
      url = {
        "https://github.com/" = {
          insteadOf = "git@github.com:";
        };
      };
    };
  };

  programs.gh = {
    settings = {
      git_protocol = lib.mkForce "https";
    };
  };
}
