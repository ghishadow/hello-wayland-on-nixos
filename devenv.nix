{ pkgs, ... }:

{
  env.GREET = "devenv";

  packages = with pkgs; [ llvmPackages_17.clangUseLLVM wayland-protocols pkg-config wayland-scanner git ];

  scripts.hello.exec = "echo hello from $GREET";

  enterShell = ''
    hello
    git --version
  '';

  # languages.nix.enable = true;

  pre-commit.hooks.shellcheck.enable = true;

  # https://devenv.sh/processes/
  # processes.ping.exec = "ping example.com";

}
