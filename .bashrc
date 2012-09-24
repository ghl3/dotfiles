

# Source a global bashrc
# if one exists
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi


#
# GLOBAL SOURCES
# (GENERIC FOR ALL LINUX SYSTEMS)
#

# PS 1 Prompt
export PS1="\w: "
export PATH="/usr/local/bin:/usr/local/sbin:$PATH" 

alias ls="ls -G"
export LSCOLORS=exfxfxfxcxfxfxcxcxexex
export CLICOLOR=1

# SVN PATHS
export CERN_USER='ghl'
alias SVN_EDITOR=/usr/bin/emacs
export SVNOFF=svn+ssh://svn.cern.ch/reps/atlasoff
export SVNGRP=svn+ssh://svn.cern.ch/reps/atlasgrp
export SVNPHYS=svn+ssh://svn.cern.ch/reps/atlasphys
export SVNGHL=svn+ssh://svn.cern.ch/reps/atlasusr/ghl
#export SVNNYU=svn+ssh://svn.cern.ch/reps/atlasgrp/Institutes/NYU
export SVNNYU=svn+ssh://svn.cern.ch/reps/atlasnyu

# Spontaneous symmetry svn:
export SPONSVN=https://subversion.assembla.com/svn/spontaneoussymmetry/

alias make_tar="tar -cvzf"
alias untar="tar -zxvf"

export PYTHONSTARTUP=${HOME}/.pystartup

alias root='root.exe'

pip_check_update () { pip freeze | cut -d = -f 1 | xargs -n 1 pip search | grep -B2 'LATEST:' ; }

# A small helper script to make a blank python executable
newPython () { 
    cat > main.py <<EOF
#!/usr/bin/env python


def main():

    return

if __name__ == "__main__":
    main()     

EOF

chmod +x main.py
}


# Source a local bashrc
# if one exists
if [ -f ${HOME}/.bashrc_local ]; then
    source ${HOME}/.bashrc_local
fi


# All Done
