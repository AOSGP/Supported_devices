#!/bin/bash
cd ~/aosgp/
make clobber
cd ~/aosgp/
source build/envsetup.sh && time brunch falcon
cd /var/lib/jenkins/aosgp/out/target/product/falcon/
mv lineage-aosgp-X-2.0-$(date +%Y%m%d)-falcon.zip aosgp-X-2.0-$(date +%Y%m%d)-falcon.zip
mv aosgp-X-2.0-$(date +%Y%m%d)-falcon.zip /var/www/html/downloads/AOSGP/Motorola/MotoG13-falcon/aosgp-X-2.0-$(date +%Y%m%d)-falcon.zip