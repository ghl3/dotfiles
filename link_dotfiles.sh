#!/bin/bash -u

set -e

# Find the Home Directory

MY_HOMEDIR=$( eval echo ~$USER )

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


# Link all files

ALL_DOTFILES=(`ls $SCRIPT_DIR/dotfiles/*`)

for FPATH in "${ALL_DOTFILES[@]}"; do
    FNAME=$(basename $FPATH)
    TARGETNAME=$MY_HOMEDIR/.$FNAME
    if [ -f $TARGETNAME ]; then
	echo "Target for dotfile $TARGETNAME already exist. Not linking dotfiles"
	echo "Please remove/rename existing file and try again."
	exit -1
    fi
done

for FPATH in "${ALL_DOTFILES[@]}"; do
    FNAME=$(basename $FPATH)
    TARGETNAME=$MY_HOMEDIR/.$FNAME
    echo "Linking $FNAME to $TARGETNAME"
    ln -s $FPATH $TARGETNAME
done
