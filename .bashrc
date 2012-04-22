

#export TERM=xterm-256color

export PS1="\w: "
export PATH="/usr/local/bin:/usr/local/sbin:$PATH" 

alias ls="ls -G"
export CLICOLOR=1
export LSCOLORS=exfxfxfxcxfxfxcxcxexex

#alias epsall="~/.epspdfall"

alias epsall="~/.python_scripts/epsall.py *"
alias epsmake="~/.python_scripts/epsall.py"
alias untar="tar -zxvf"
alias pdftokeynote="open -a PDF\ to\ Keynote"

alias sl="screen -ls"
alias sd="screen -d"
alias sr="screen -r"

alias Emacs="/Applications/Emacs.app/Contents/MacOS/Emacs"
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'

alias sshfs='/Applications/sshfs/bin/mount_sshfs'
alias tpifs='sshfs ghl@tier-pi.physics.nyu.edu:/data/ghl Tier-pi'
alias 2pifs='sshfs ghl@tier-2pi.physics.nyu.edu:/Users/ghl/Analysis Tier-2pi'

alias root='root.exe'

export PATH=/Users/GHL/Library/TeXShop/bin:$PATH


export PYTHONSTARTUP="/Users/GHL/.pythonstartup"

# Add Endthought Python:
#PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
alias enpython="/Library/Frameworks/Python.framework/Versions/Current/bin/python"

setPythonEn() { export PATH="/Library/Frameworks/Python.framework/Versions/Current/bin":$PATH;}
setPython() { export PATH="/usr/local/bin":$PATH; }

#export PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:$PATH"
#alias python="/Library/Frameworks/Python.framework/Versions/Current/bin/python"



#export PYTHONSTARTUP='/Users/GHL/.pystartup'
setup_root_530 () { source "/usr/local/root_versions/root-5.28.00/bin/thisroot.sh" ; }
setup_root_530 () { source "/usr/local/root_versions/root-5.30.00/bin/thisroot.sh" ; }
setup_root_532 () { source "/usr/local/root_versions/root-5.32.00-patches/bin/thisroot.sh" ; }
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

# SVN PATHS
export CERN_USER='ghl'
alias SVN_EDITOR=/usr/bin/emacs
export SVNOFF=svn+ssh://svn.cern.ch/reps/atlasoff
export SVNGRP=svn+ssh://svn.cern.ch/reps/atlasgrp
export SVNNYU=svn+ssh://svn.cern.ch/reps/atlasgrp/Institutes/NYU
export SVNGHL=svn+ssh://svn.cern.ch/reps/atlasusr/ghl


# Spontaneous symmetry svn:
export SPONSVN=https://subversion.assembla.com/svn/spontaneoussymmetry/



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


#    echo "" >> main.py  
#    echo "" >> main.py  
