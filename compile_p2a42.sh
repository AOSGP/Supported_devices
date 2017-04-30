#!/bin/bash
cd ~/aosgp/
make clobber
cd ~/aosgp/
source build/envsetup.sh && time brunch p2a42
cd /var/lib/jenkins/aosgp/out/target/product/p2a42/
mv lineage-aosgp-X-2.1.1-$(date +%Y%m%d)-p2a42.zip aosgp-X-2.1.1-$(date +%Y%m%d)-p2a42.zip
mv aosgp-X-2.1.1-$(date +%Y%m%d)-p2a42.zip /var/www/html/downloads/AOSGP/Lenovo/P2-p2a42/aosgp-X-2.1.1-$(date +%Y%m%d)-p2a42.zip