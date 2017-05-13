#!/bin/bash
cd ~/aosgp/
make clobber
cd ~/aosgp/
source build/envsetup.sh && time brunch natrium
cd /var/lib/jenkins/aosgp/out/target/product/natrium/
mv lineage-aosgp-X-2.1.1-$(date +%Y%m%d)-natrium.zip aosgp-X-2.1.1-$(date +%Y%m%d)-natrium.zip
mv aosgp-X-2.1.1-$(date +%Y%m%d)-natrium.zip /var/www/html/downloads/AOSGP/Xiaomi/Mi5SPlus-natrium/aosgp-X-2.1.1-$(date +%Y%m%d)-natrium.zip