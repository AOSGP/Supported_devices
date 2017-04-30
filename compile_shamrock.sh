#!/bin/bash
cd ~/aosgp/
make clobber
cd ~/aosgp/
source build/envsetup.sh && time brunch shamrock
cd /var/lib/jenkins/aosgp/out/target/product/shamrock/
mv lineage-aosgp-X-2.1.1-$(date +%Y%m%d)-shamrock.zip aosgp-X-2.1.1-$(date +%Y%m%d)-shamrock.zip
mv aosgp-X-2.1.1-$(date +%Y%m%d)-shamrock.zip /var/www/html/downloads/AOSGP/General_Mobile/GM5+-shamrock/aosgp-X-2.1.1-$(date +%Y%m%d)-shamrock.zip