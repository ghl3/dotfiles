

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
export PS1="\u@\h:\W$ "
export PATH="/usr/local/bin:/usr/local/sbin:$PATH" 
#export PATH=${HOME}/.local/bin:$PATH

alias ls="ls -G"
export CLICOLOR=1
export LSCOLORS=exfxfxfxcxfxfxcxcxexex
alias ls="ls --color=auto"
export LSCOLORS=exfxfxfxcxfxfxcxcxexex


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


#
# LOCAL
# (GENERIC FOR ALL LINUX SYSTEMS)
#



#alias epsall="~/.epspdfall"

alias epsall="~/.python_scripts/epsall.py *"
alias epsmake="~/.python_scripts/epsall.py"
alias pdftokeynote="open -a PDF\ to\ Keynote"

alias sl="screen -ls"
alias sd="screen -d"
alias sr="screen -r"

alias Emacs="/Applications/Emacs.app/Contents/MacOS/Emacs"
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'

#alias sshfs='/Applications/sshfs/bin/mount_sshfs'
#alias tpifs='sshfs ghl@tier-pi.physics.nyu.edu:/data/ghl Tier-pi'
#alias 2pifs='sshfs ghl@tier-2pi.physics.nyu.edu:/Users/ghl/Analysis Tier-2pi'



export PATH=/Users/GHL/Library/TeXShop/bin:$PATH



pip_check_update () { pip freeze | cut -d = -f 1 | xargs -n 1 pip search | grep -B2 'LATEST:' ; }

# Add Endthought Python:
#PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
alias enpython="/Library/Frameworks/Python.framework/Versions/Current/bin/python"

setPythonEn64() { export PATH="/Library/Frameworks/EPD64.framework/Versions/Current/bin":$PATH;}
setPythonEn32() { export PATH="/Library/Frameworks/Python.framework/Versions/Current/bin":$PATH;}
setPythonEn() { setPythonEn64;}
setPythonMac() { export PATH="/usr/local/bin":$PATH; }
setPython() { setPythonMac; }

#export PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:$PATH"
#alias python="/Library/Frameworks/Python.framework/Versions/Current/bin/python"



#export PYTHONSTARTUP='/Users/GHL/.pystartup'
setup_root_530 () { source "/usr/local/root_versions/root-5.28.00/bin/thisroot.sh" ; }
setup_root_530 () { source "/usr/local/root_versions/root-5.30.00/bin/thisroot.sh" ; }
setup_root_532 () { source "/usr/local/root_versions/root-5.32.00-patches/bin/thisroot.sh" ; }
setup_root_534 () { source "/usr/local/root_versions/root-5.34.00-tag/bin/thisroot.sh" ; }
setup_root_532_dev () { source "/usr/local/root_versions/root-5.32.00-patches-dev/bin/thisroot.sh" ; }


#export ROOTSYS='/usr/local/root'
#export PATH=$ROOTSYS/bin:$PATH
#export LD_LIBRARY_PATH=$ROOTSYS/lib:$LD_LIBRARY_PATH
#export DYLD_LIBRARY_PATH=$ROOTSYS/lib:$DYLD_LIBRARY_PATH

setRootsys () { export PATH=$ROOTSYS/bin:$PATH; export LD_LIBRARY_PATH=$ROOTSYS/lib:$LD_LIBRARY_PATH; export DYLD_LIBRARY_PATH=$ROOTSYS/lib:$DYLD_LIBRARY_PATH; }

latexLandscape() { dvips -Ppdf -t landscape MakeSameSignLatex.dvi; ps2pdf MakeSameSignLatex.ps; }

#kinit() {  kinit ghl@CERN.CH; }

#export G4SYSTEM=Linux-g++
#export G4INSTALL=$HOME/geant4.9.2.p01
#export G4LIB=$HOME/lib4.9.2.p01
export CLHEP_BASE_DIR=$HOME/CLHEP_dir
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${CLHEP_BASE_DIR}/lib


# Make a generic python file

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

# Source a  bashrc
# if one exists
if [ -f ${HOME}/.bashrc_local ]; then
    source ${HOME}/.bashrc_local
fi
