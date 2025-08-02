{
  programs.git = {
    enable = true;

    userEmail = "faranguiz575@gmail.com";
    userName = "Felipe Aranguiz";

    signing = {
      key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBKjxjm4SBcOjk64v8eU3sYH5QE/zLkPWyQDQwurJOUE";
      signByDefault = true;
    };

    extraConfig = {
      core = {
        autocrlf = "input";
        filemode = false;
        eol = "lf";
      };

      gpg = {
        format = "ssh";
      };

      push = {
        default = "simple";
        autoSetupRemote = true;
      };

      init = {
        defaultBranch = "main";
      };
    };

    delta = {
      enable = true;
      options = {
        line-numbers = true;
      };
    };

    aliases = {
      undo = "reset --soft HEAD^";
    };

  };
}
