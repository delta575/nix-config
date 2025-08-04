{
  programs.zsh = {
    enable = true;
    initContent = ''
      export PATH="/home/delta/.bun/bin:$PATH"
    '';
    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "git"
      ];
    };
  };
}
