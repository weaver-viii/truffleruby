# Installing LLVM

TruffleRuby needs LLVM to run and build C extensions. The versions that are
tested for each platform and how to install them are documented below. You may
have success with later versions, but we don't actively test these.

## Oracle Linux

The tested version of LLVM for Oracle Linux 7 is 4.0.

For building C extensions you need to install:

```
yum install -y make
yum install -y oraclelinux-developer-release-el7 oracle-softwarecollection-release-el7
yum install -y llvm-toolset-7
export PATH=$PATH:/opt/rh/llvm-toolset-7/root/usr/bin
export LD_LIBRARY_PATH=/opt/rh/llvm-toolset-7/root/usr/lib64
```

For using C++ extensions you also need to install:

```
yum-config-manager --enable ol7_developer_EPEL
yum install libcxx
```

And for building C++ extensions:

```
yum install libcxx-devel
```

## Ubuntu

The tested version of LLVM for Ubuntu 18.04 is 6.0, and for Ubuntu 16.04 is 3.8.

For building C extensions you need to install:

```
apt-get install make clang llvm
```

For building and using C++ extensions you also need to install:

```
apt-get install libc++-dev libc++abi-dev    # on 18.04
apt-get install libc++-dev                  # on 16.04
```

Note that we install `libc++-dev` here even for just using C++ extensions, as
installing `libc++` seems to introduce some system conflicts.

## Fedora

The tested version of LLVM for Fedora 28 is 6.0.

For building C extensions you need to install:

```
sudo dnf install make clang llvm
```

For using C++ extensions you also need to install:

```
sudo dnf install libcxx
```

And for building C++ extensions:

```
sudo dnf install libcxx-devel
```

## macOS

The tested version of LLVM for macOS 10.13 and 10.14 is 4.0.1.

We need the `opt` command, so you can't just use what is installed by Xcode if
you are on macOS. For building and using C and C++ extensions on macOS we
recommend just installing the full `llvm` package. Make sure you have also
installed the standard C headers from Xcode via `xcode-select --install`, and on
Mojave make sure you have installed `macOS_SDK_headers_for_macOS_10.14.pkg`.

### Homebrew

We would recommend that you install LLVM 4 via [Homebrew](https://brew.sh).

```bash
brew install llvm@4
```

### MacPorts

MacPorts should also work but is not actively tested. Use LLVM 4.0 here as well.

```bash
sudo port install clang-4.0 llvm-4.0
```
