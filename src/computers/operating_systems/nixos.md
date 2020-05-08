# NixOS

[NixOS](https://nixos.org/) is a Linux distribution with a unique approach to package and configuration management. Built on top of the Nix package manager, it is completely declarative, makes upgrading systems reliable, and has many other advantages.

I have been using NixOS as my Linux distro of choice since November 2019.

## Home Manager

[Home Manager](https://github.com/rycee/home-manager) is a project that allows you to manage your user environment using Nix, much like how you manage your system's global configuration. This is preferable, as it means that multiple users on the machine can have control over their own environments. In my case, I am the only user on my machine, but I still use Home Manager as it means I don't need root privileges to install new packages.
