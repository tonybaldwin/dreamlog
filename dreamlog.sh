#!/bin/bash

#################################
# dreamlog - by tony baldwin    #
# http://tonybaldwin.me         #
# keeping a log of dreams       #
# released according to GPL v.3 #
################################

filedate=$(date +%Y%m%d%H%M%S)
			
if [[ $1 = r ]]; then
	if [[ $2 ]]; then
		cat ~/.dreamlog/$2* | less
	else
		for i in $(ls -Rt ~/.dreamlog/*.dream); do cat $i; done | less
	fi
else
if [[ $1 = h ]]; then
	echo "dreamlog - opens a new dreamlog file to edit in vim.
dreamlog r - reads all entries (cats all files in the dir, pipes to less)
dreamlog r yyyymmdd - reads entries from date yyyymmdd. One can specify just yyyymm, or just yyyy, even.
dreamlog l - lists all dreamlog entries. Like r, it can be narrowed down with date parameters.
dreamlog s searchterm - searches for searchterm in dream entries.
dreamlog h - displays this help message.
dreamlog management system by tony baldwin, http://tonybaldwin.me, released according to GPL v. 3"

else
	if [[ $1 = l ]]; then
		if [[ $2 ]]; then
			ls -1t ~/.dreamlog/ | grep $2
		else
			ls -1t ~/.dreamlog/
		fi
else
	if [[ $1 = s ]]; then
		cd ~/.dreamlog
		grep $2 *

else
	vi + ~/.dreamlog/$filedate.dream
fi
fi
fi
fi

# This program was written by anthony baldwin - tony@tonybaldwin.org 
# This program is free software; you can redistribute it and/or modify 
# it under the terms of the GNU General Public License as published by 
# the Free Software Foundation; either version 2 of the License, or 
# (at your option) any later version.
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.


exit
