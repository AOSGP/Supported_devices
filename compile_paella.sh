#!/bin/bash
cd ~/aosgp/
make clobber
cd ~/aosgp/
source build/envsetup.sh && time brunch paella
cd /var/lib/jenkins/aosgp/out/target/product/paella/
mv lineage-aosgp-X-2.1.1-$(date +%Y%m%d)-paella.zip aosgp-X-2.1.1-$(date +%Y%m%d)-paella.zip
mv aosgp-X-2.1.1-$(date +%Y%m%d)-paella.zip /var/www/html/downloads/AOSGP/Bq/BqAquarisX5-paella/aosgp-X-2.1.1-$(date +%Y%m%d)-paella.zip