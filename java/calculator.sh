#!/bin/bash
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
java -cp jnaerator-0.11-SNAPSHOT-20121008.jar:bin/ pbots_calc/Calculator $1 $2 $3
