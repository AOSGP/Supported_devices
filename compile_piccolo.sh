#!/bin/bash
cd ~/aosgp/
make clobber
cd ~/aosgp/
source build/envsetup.sh && time brunch piccolo
cd /var/lib/jenkins/aosgp/out/target/product/piccolo/
mv lineage-aosgp-X-2.0-$(date +%Y%m%d)-piccolo.zip aosgp-X-2.0-$(date +%Y%m%d)-piccolo.zip
mv aosgp-X-2.0-$(date +%Y%m%d)-piccolo.zip /var/www/html/downloads/AOSGP/Bq/BqAquarisM5-piccolo/aosgp-X-2.0-$(date +%Y%m%d)-piccolo.zip