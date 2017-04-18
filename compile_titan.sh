#!/bin/bash
cd ~/aosgp/
make clobber
cd ~/aosgp/
source build/envsetup.sh && time brunch titan
cd /var/lib/jenkins/aosgp/out/target/product/titan/
mv lineage-aosgp-X-2.1.1-$(date +%Y%m%d)-titan.zip aosgp-X-2.1.1-$(date +%Y%m%d)-titan.zip
mv aosgp-X-2.1.1-$(date +%Y%m%d)-titan.zip /var/www/html/downloads/AOSGP/Motorola/MotoG14-titan/aosgp-X-2.1.1-$(date +%Y%m%d)-titan.zip