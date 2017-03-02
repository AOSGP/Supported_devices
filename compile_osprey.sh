#!/bin/bash
cd ~/aosgp/
make clobber
cd ~/aosgp/
source build/envsetup.sh && time brunch osprey
cd /var/lib/jenkins/aosgp/out/target/product/osprey/
mv lineage-aosgp-X-2.0-$(date +%Y%m%d)-osprey.zip aosgp-X-2.0-$(date +%Y%m%d)-osprey.zip
mv aosgp-X-2.0-$(date +%Y%m%d)-osprey.zip /var/www/html/downloads/AOSGP/Motorola/MotoG15-osprey/aosgp-X-2.0-$(date +%Y%m%d)-osprey.zip