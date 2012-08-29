

$DOTFILE_DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

LINK_FILES=(.bashrc .bash_profile .emacs .gitconfig .pystartup .rootrc .elisp)

cd $HOME 

for item in ${array[*]}
do
    ln -s $DOTFILE_DIR/$item 
done

cd $DOTFILE_DIR