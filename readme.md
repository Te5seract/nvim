# Isaac NVIM 2023

This is a stable 2023 rebuild of my Neovim configuration.

Nothing super special here, it features the Kanagawa colourscheme
that has been customized to look a bit more like a colourscheme I used 
to use when I used VSCode.

## Windows Setup

**Install [Scoop](https://scoop.sh/)**

You're going to need this.

```
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
irm get.scoop.sh | iex
```

Setup for this theme on Windows might be a bit more of a pain to do 
than on a Mac.

Since it makes use of Treesitter and Treesitter makes use of C++ installation
of many things from the below link will be needed.

Install pretty much everything from this:

https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support

List of things needed:

* Mingw toolchain
* LLVM (Clang)
* MSVC (more info on this below)
Yes MSVC, the actual IDE Visual Studio. When installing this install the _Desktop development
with C++_ under _Workloads_.
* Zig
* GCC
