# dgit
# Integration between git and Debian-style archives
#
# Copyright (C)2013 Ian Jackson
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

INSTALL=install
INSTALL_DIR=$(INSTALL) -d
INSTALL_PROGRAM=$(INSTALL) -m 755
prefix?=/usr/local

PROGRAMS=dgit

all:

install:	installdirs
	$(INSTALL_PROGRAM) $(PROGRAMS) $(DESTDIR)$(prefix)/bin

installdirs:
	$(INSTALL_DIR) $(DESTDIR)$(prefix)/bin

check installcheck:

clean distclean mostlyclean maintainer-clean:
