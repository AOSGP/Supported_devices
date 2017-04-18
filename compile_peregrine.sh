#!/bin/bash
cd ~/aosgp/
make clobber
cd ~/aosgp/
source build/envsetup.sh && time brunch peregrine
cd /var/lib/jenkins/aosgp/out/target/product/peregrine/
mv lineage-aosgp-X-2.1.1-$(date +%Y%m%d)-peregrine.zip aosgp-X-2.1.1-$(date +%Y%m%d)-peregrine.zip
mv aosgp-X-2.1.1-$(date +%Y%m%d)-peregrine.zip /var/www/html/downloads/AOSGP/Motorola/MotoG4G-peregrine/aosgp-X-2.1.1-$(date +%Y%m%d)-peregrine.zip