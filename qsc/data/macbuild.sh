#!/bin/bash

# QSC (Qt SDK Creator) - A tool for automatically downloading, building and stripping down Qt
# Copyright (C) 2025 OatmealDome
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

set -e

../qt-everywhere-src-$RELEASE/configure \
  -opensource -confirm-license \
  $QT_CONFIGURE_OPTIONS \
  -prefix $OUTNAME \
  $QT_PLATFORM \
  -- -DCMAKE_OSX_ARCHITECTURES="x86_64;arm64"

cmake --build . --parallel

cmake --install .
