#!/bin/bash
cd ~/aosgp/
make clobber
cd ~/aosgp/
source build/envsetup.sh && time brunch kenzo
cd /var/lib/jenkins/aosgp/out/target/product/kenzo/
mv lineage-aosgp-X-2.0-$(date +%Y%m%d)-kenzo.zip aosgp-X-2.0-$(date +%Y%m%d)-kenzo.zip
mv aosgp-X-2.0-$(date +%Y%m%d)-kenzo.zip /var/www/html/downloads/AOSGP/Xiaomi/RedmiNote3Pro-kenzo/aosgp-X-2.0-$(date +%Y%m%d)-kenzo.zip