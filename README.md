PackageKit
==========

based on PackageKit 0.7.6


## Build for ArchLinux

```
patch -Np1 -i adopt.patch
patch -Np1 -i alpm.patch
patch -Np1 -i libarchive.patch

export PYTHON=/usr/bin/python2

./autogen.sh --prefix=/usr \
             --sysconfdir=/etc \
             --localstatedir=/var \
             --libexecdir=/usr/lib/PackageKit \
             --enable-strict \
             --disable-static \
             --disable-gtk-doc \
             --disable-tests \
             --disable-local \
             --disable-browser-plugin \
             --disable-gstreamer-plugin \
             --disable-gtk-module \
             --disable-command-not-found \
             --disable-cron \
             --disable-debuginfo-install \
             --enable-pm-utils \
             --disable-dummy \
             --enable-alpm \
             --with-default-backend=alpm                                          

make -s CFLAGS='-D_FILE_OFFSET_BITS=64 -O2 -Wno-unused-local-typedefs -Wno-deprecated-declarations -Wno-suggest-attribute=format'

```
