#!/bin/bash
cd ~/aosgp/
make clobber
cd ~/aosgp/
source build/envsetup.sh && time brunch tomato
cd /var/lib/jenkins/aosgp/out/target/product/tomato/
mv lineage-aosgp-X-2.1.1-$(date +%Y%m%d)-tomato.zip aosgp-X-2.1.1-$(date +%Y%m%d)-tomato.zip
mv aosgp-X-2.1.1-$(date +%Y%m%d)-tomato.zip /var/www/html/downloads/AOSGP/Yu/Yureka-tomato//aosgp-X-2.1.1-$(date +%Y%m%d)-tomato.zip