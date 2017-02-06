#!/bin/bash
cd ~/aosgp/
make clobber
cd ~/aosgp/
source build/envsetup.sh && time brunch oneplus3
cd /var/lib/jenkins/aosgp/out/target/product/oneplus3/
mv lineage-aosgp-X-2.0-$(date +%Y%m%d)-oneplus3.zip aosgp-X-2.0-$(date +%Y%m%d)-oneplus3.zip
mv aosgp-X-2.0-$(date +%Y%m%d)-oneplus3.zip /var/www/html/downloads/AOSGP/OnePlus/OnePlus3-oneplus3/aosgp-X-2.0-$(date +%Y%m%d)-oneplus3.zip