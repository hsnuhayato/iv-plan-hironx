#!/bin/bash

PKGDIR=`rosstack find iv-pkg-unreleased`
echo $PKGDIR
$PKGDIR/LoadPictureComp/LoadPictureComp -f ./rtc_loadpicture.conf &
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/prog/hironx/iv-pkg-unreleased/opencv23/lib $PKGDIR/app-recog/build/bin/AppRecogComp -f ./rtc_loadpicture.conf
