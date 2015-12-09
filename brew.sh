#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install other useful binaries.
brew install ansible
brew install autoconf
brew install automake
brew install awscli
brew install boost
brew install brew-cask
brew install cairo
brew install cgal
brew install cmake
brew install coreutils
brew install cscope
brew install ctags
brew install direnv
brew install dos2unix
brew install ec2-api-tools
brew install elinks
brew install enca
brew install fontconfig
brew install freetype
brew install freexl
brew install gd
brew install gdal
brew install gdbm
brew install geos
brew install gettext
brew install ghostscript
brew install giflib
brew install git
brew install git-flow-avh
brew install glib
brew install gmp
brew install gnu-getopt
brew install gnu-tar
brew install gnupg
brew install gnuplot
brew install go
brew install gobject-introspection
brew install libxslt
brew install gpp
brew install graphviz
brew install htop-osx
brew install imagemagick
brew install influxdb
brew install jbig2dec
brew install jpeg
brew install json-c
brew install libffi
brew install libgeotiff
brew install liblwgeom
brew install libpng
brew install libspatialite
brew install libtiff
brew install libtool
brew install libxml2
brew install libyaml
brew install little-cms2
brew install logstash
brew install lua
brew install lzlib
brew install macvim
brew install markdown
brew install moreutils
brew install mpfr
brew install ncdu
brew install nmap
brew install node
brew install nspr
brew install nss
brew install openjpeg
brew install openssl
brew install ossp-uuid
brew install p7zip
brew install passenger
brew install pcre
brew install phantomjs
brew install pixman
brew install pkg-config
brew install postgis
brew install postgresql
brew install privoxy
brew install proj
brew install python
brew install qcachegrind
brew install qpdf
brew install qt
brew install rabbitmq
brew install rbenv
brew install readline
brew install ruby-build
brew install sfcgal
brew install sqlite
brew install tree
brew install v8
brew install wget
brew install wxmac
brew install xz

# Remove outdated versions from the cellar.
brew cleanup
