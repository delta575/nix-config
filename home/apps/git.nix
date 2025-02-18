{
  programs.git = {
    enable = true;

    userEmail = "faranguiz575@gmail.com";
    userName = "Felipe Aranguiz";

    signing = {
      key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDQOLmO6OFzkV/Qqo2oW1728VyqXLwmW+nA27jvt35MkT5WNBBKGW6MbGWLX+G/ci0OE9gXTVjEKmUKcjuqHNWhkkqpH35aEnn7vYIE/hb8mbsIPPLMeBcWcIHlhOvGh0RyKFksWyaqwqo/ax2O2MhrQDwZYBPMxlcYY+Kgjoqbpo8nF1H32QS+JRTgRKyELKJCHy+CiJ8CwUHxZ62pfp3MHS34AGGpRTE7BUHMiPvJp6wIQo67UTWaCwbJDtNdwUb3i4hki+MuiF544K9u9xv8aHHAKTowfXZ4FY2vRpGbUfTWw5tIdN0e+jhyR7D55/4zQHKS4NHCjQvRLOw5b+yun7zRS59GrSaSYTiVZTxGoRYp3oV/4HNiqorLAhju6pxtW6E0NiBhJ4KjrF4I8LhcovDn7XpfDX40YowE4N9nikiNKZJw8NzM/t66esFc7HLVWtN7Sw+po1m+UI0nLo7lAGKKHvWGtNbt/ui3X2lv1pM0DweNYaF/hCZgLG4/PYk=";
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
