#!/usr/bin/python
#
# Copyright (C) 2012-2013 Owen Derby (ocderby@gmail.com)
#
# This file is part of pbots_calc.
#
# pbots_calc is free software: you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation, either version 3 of the License, or (at your option) any later
# version.
#
# pbots_calc is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
# A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along with
# pbots_calc in a file in teh toplevel directory called "GPLv3".  If not, see
# <http://www.gnu.org/licenses/>.
#

import os
import sys

env = Environment(TARGET_ARCH="x86")
newpath=os.environ.get('PATH')
env.Append(ENV = { 'PATH' : newpath })

ccflags = ['-I.', '-MDd']
if not sys.platform.startswith('win'):
    ccflags.extend(['-Wall', '-O3', '-Wpointer-arith'])
env.Append(CCFLAGS=ccflags)
env.Append(LINKFLAGS = ['-Wl', '-g', '-O3'])

Export("env")

env.Alias('install', ['/usr/local'])
env.Alias('build', ['.'])

SConscript(["src/SConscript","example/SConscript","java/SConscript"],export="env")
