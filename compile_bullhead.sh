#!/bin/bash
cd ~/aosgp/
make clobber
cd ~/aosgp/
source build/envsetup.sh && time brunch bullhead
cd /var/lib/jenkins/aosgp/out/target/product/bullhead/
mv lineage-aosgp-X-2.0-$(date +%Y%m%d)-bullhead.zip aosgp-X-2.0-$(date +%Y%m%d)-bullhead.zip
mv aosgp-X-2.0-$(date +%Y%m%d)-bullhead.zip /var/www/html/downloads/AOSGP/LG/Nexus5x-bullhead/aosgp-X-2.0-$(date +%Y%m%d)-bullhead.zip
