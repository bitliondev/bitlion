
Debian
====================
This directory contains files used to package bitlioncoind/bitlioncoin-qt
for Debian-based Linux systems. If you compile bitlioncoind/bitlioncoin-qt yourself, there are some useful files here.

## bitlioncoin: URI support ##


bitlioncoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install bitlioncoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your bitlioncoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/bitlioncoin128.png` to `/usr/share/pixmaps`

bitlioncoin-qt.protocol (KDE)

