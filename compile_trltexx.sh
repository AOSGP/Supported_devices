#!/bin/bash
cd ~/aosgp/
make clobber
cd ~/aosgp/
source build/envsetup.sh && time brunch trltexx
cd /var/lib/jenkins/aosgp/out/target/product/trltexx/
mv lineage-aosgp-X-2.1.1-$(date +%Y%m%d)-trltexx.zip aosgp-X-2.1.1-$(date +%Y%m%d)-trltexx.zip
mv aosgp-X-2.1.1-$(date +%Y%m%d)-trltexx.zip /var/www/html/downloads/AOSGP/Samsung/GalaxyNote4-trltexx/aosgp-X-2.1.1-$(date +%Y%m%d)-trltexx.zip