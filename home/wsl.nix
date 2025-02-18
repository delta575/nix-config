{ ... }:

{
  imports = [
    ./linux.nix
  ];

  programs.git = {
    extraConfig = {
      core = {
        sshCommand = "ssh.exe";
      };
      gpg = {
        ssh.program = "/mnt/c/Users/delta/AppData/Local/1Password/app/8/op-ssh-sign-wsl";
      };
    };
  };
}
