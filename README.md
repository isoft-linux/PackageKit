PackageKit
==========

based on PackageKit v0.7.6


## Build for YUM

```
export PYTHON=/usr/bin/python2

libtoolize --force --copy

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
             --disable-qt \
             --disable-dummy \
             --enable-yum \
             --with-default-backend=yum

make -s CFLAGS='-D_FILE_OFFSET_BITS=64 -O2 -Wno-unused-local-typedefs -Wno-deprecated-declarations -Wno-suggest-attribute=format -g' -j 5
sudo make install
```
