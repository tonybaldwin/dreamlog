#!/bin/bash

# installer for dreamlog.sh
# by tony baldwin - http://tonyb.us/dream

if [ != "$HOME/bin/" ]; then
	mkdir $HOME/bin/
	$PATH=$PATH:/$HOME/bin/
	export PATH
fi

editor="/usr/bin/vim"

echo "installing dreamlog.sh ... "
cp dreamlog $HOME/bin/dreamlog
chmod +x $HOME/bin/dreamlog

echo "Creating config files ... "
read -p "What is your prefered editor? " ed
if [[ $ed != "" ]]; then
	editor=$ed
fi

mkdir $HOME/.dreamlog
echo "# dreamlog.sh config file" > $HOME/.dreamlog.conf
echo "$HOME/.dreamlog/" >> $HOME/.dreamlog.conf
echo "editor=$editor" >> $HOME/.dreamlog.conf

echo "Installation complete."

dreamlog h

exit
