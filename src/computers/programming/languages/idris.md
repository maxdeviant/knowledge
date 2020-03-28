# Idris

[Idris](https://www.idris-lang.org/) is a programming language designed to encourage _Type-Driven Development_.

## Idris 2

Development is currently underway on [Idris 2](https://github.com/edwinb/Idris2), the successor to Idris.

Edwin Brady, the Idris author, gave a talk at Curry On London! 2019 on the [type-driven development of Idris](https://youtu.be/DRq2NgeFcO0) which showcases some of the new features in Idris 2.

### Developing

On NixOS you can use the following `shell.nix` in order to get (most of) the dependencies required to build Idris 2:

```nix
with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "idris2";

  buildInputs = [
    stdenv
    pkg-config
    clang
    chez
    gmp
  ];
}
```

You will also need a version of Idris 1 installed. At time of writing the `idris` package for NixOS is currently broken, so you'll need to build Idris 1 from source as well:

```sh
git clone git@github.com:idris-lang/Idris-dev.git idris-dev
cd idris-dev
stack install --nix
```

Idris 1 should now be installed to `~/.local/bin/idris`. Make sure that `~/.local/bin` is on your `PATH` before attempting to build Idris 2.

Once all of these dependencies are installed, you should be all set to start hacking on Idris 2! 
