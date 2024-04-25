# Install

## Pre requirements
### ubuntu
```bash
sudo apt-get install ninja-build gettext cmake unzip curl build-essential
```


## Quick start
1. `git clone https://github.com/neovim/neovim`
2. `cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo`
    - If you want the **stable release**, also run `git checkout stable`.
    - If you want to install to a custom location, set `CMAKE_INSTALL_PREFIX`. See also [INSTALL.md](./INSTALL.md#install-from-source).
    - On BSD, use `gmake` instead of `make`.
    - To build on Windows, see the [Building on Windows](#building-on-windows) section. _MSVC (Visual Studio) is recommended._
4. `sudo make install`
    - Default install location is `/usr/local`
    - On Debian/Ubuntu, instead of installing files directly with `sudo make install`, you can run `cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb` to build DEB-package and install it. This should help ensuring the clean removal of installed files.
