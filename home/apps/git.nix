{ ... }:

{
  programs.git = {
    enable = true;

    signing = {
      key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBKjxjm4SBcOjk64v8eU3sYH5QE/zLkPWyQDQwurJOUE";
      signByDefault = true;
      format = "ssh";
    };

    settings = {
      user = {
        name = "Felipe Aranguiz";
        email = "faranguiz575@gmail.com";
      };

      core = {
        autocrlf = "input";
        filemode = false;
        eol = "lf";
      };

      push = {
        default = "simple";
        autoSetupRemote = true;
      };

      init = {
        defaultBranch = "main";
      };

      alias = {
        undo = "reset --soft HEAD^";
      };
    };
  };

  # delta: syntax-highlighted diffs
  programs.delta = {
    enable = true;
    enableGitIntegration = true;
    options = {
      line-numbers = true;
    };
  };
}
