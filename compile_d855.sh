#!/bin/bash
cd ~/aosgp/
make clobber
cd ~/aosgp/
source build/envsetup.sh && time brunch d855
cd /var/lib/jenkins/aosgp/out/target/product/d855/
mv lineage-aosgp-X-2.0-$(date +%Y%m%d)-d855.zip aosgp-X-2.0-$(date +%Y%m%d)-d855.zip
mv aosgp-X-2.0-$(date +%Y%m%d)-d855.zip /var/www/html/downloads/AOSGP/LG/LGG3-d855/aosgp-X-2.0-$(date +%Y%m%d)-d855.zip