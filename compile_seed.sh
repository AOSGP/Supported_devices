#!/bin/bash
cd ~/aosgp/
make clobber
cd ~/aosgp/
source build/envsetup.sh && time brunch seed
cd /var/lib/jenkins/aosgp/out/target/product/seed/
mv lineage-aosgp-X-2.1.1-$(date +%Y%m%d)-seed.zip aosgp-X-2.1.1-$(date +%Y%m%d)-seed.zip
mv aosgp-X-2.1.1-$(date +%Y%m%d)-seed.zip /var/www/html/downloads/AOSGP/General_Mobile/GM4g-seed/aosgp-X-2.1.1-$(date +%Y%m%d)-seed.zip