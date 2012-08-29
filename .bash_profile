source .bashrc

#test -r /sw/bin/init.sh && . /sw/bin/init.sh

# Setting PATH for EPD-7.1-2
# The orginal version is saved in .bash_profile.pysave

#export PATH

MKL_NUM_THREADS=1
export MKL_NUM_THREADS

# Setting PATH for EPD-7.3-2
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/EPD64.framework/Versions/Current/bin:${PATH}"
export PATH
