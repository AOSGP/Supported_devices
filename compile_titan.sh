#!/bin/bash
cd ~/cm14.1/
make clobber
cd ~/cm14.1/
source build/envsetup.sh && time brunch titan
