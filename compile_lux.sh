#!/bin/bash
cd ~/aosgp/
make clobber
cd ~/aosgp/
source build/envsetup.sh && time brunch lux
cd /var/lib/jenkins/aosgp/out/target/product/lux/
mv lineage-aosgp-X-2.1-$(date +%Y%m%d)-lux.zip aosgp-X-2.1-$(date +%Y%m%d)-lux.zip
mv aosgp-X-2.1-$(date +%Y%m%d)-lux.zip /var/www/html/downloads/AOSGP/Motorola/MotoXPlay-lux/aosgp-X-2.1-$(date +%Y%m%d)-lux.zip