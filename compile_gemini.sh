#!/bin/bash
cd ~/aosgp/
make clobber
cd ~/aosgp/
source build/envsetup.sh && time brunch gemini
cd /var/lib/jenkins/aosgp/out/target/product/gemini/
mv lineage-aosgp-X-2.1.1-$(date +%Y%m%d)-gemini.zip aosgp-X-2.1.1-$(date +%Y%m%d)-gemini.zip
mv aosgp-X-2.1.1-$(date +%Y%m%d)-gemini.zip /var/www/html/downloads/AOSGP/Xiaomi/Mi5-gemini/aosgp-X-2.1.1-$(date +%Y%m%d)-gemini.zip