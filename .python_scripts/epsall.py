#! /usr/bin/python

import os,re,sys
import stat
import time
from optparse import OptionParser


def main():

    """
    Valid inputs:
    ./epsall.py Input1 Input2 Input3 ...
    """
    parser = OptionParser()

    parser.add_option("-n", action="store_true",dest="isnew",help="Only Update those without a .pdf", default="False")
    parser.add_option("-u","--update", action="store_true",dest="onlyupdate",help="Only Update files where eps is newer than pdf", default="False")

    (options, args)  = parser.parse_args()

    for i in range(len(args)):
        # Main Loop over files
        
        Input = args[i]
        fileName = os.path.splitext(Input)[0]
        fileExt = os.path.splitext(Input)[-1]
        pdfFileName = fileName + ".pdf"

        if not fileExt == ".eps":
            continue

        Input_file_info=os.lstat(Input)
        ts_eps = Input_file_info.st_mtime

        newer_eps = False
        if os.path.isfile(pdfFileName):
            Pdf_file_info=os.lstat(pdfFileName)
            ts_pdf = Pdf_file_info.st_mtime
            if ts_eps > ts_pdf:
                newer_eps = True

        if options.onlyupdate == True:
            if newer_eps == False:
                continue

        if options.isnew == True:
            if os.path.isfile(pdfFileName):
                continue

        print "Making PDF: " + Input            
        os.system( "epstopdf %s" % (Input) ) 
       

if __name__ == "__main__":
                main() 
