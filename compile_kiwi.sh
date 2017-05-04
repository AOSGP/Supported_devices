#!/bin/bash
cd ~/aosgp/
make clobber
cd ~/aosgp/
source build/envsetup.sh && time brunch kiwi
cd /var/lib/jenkins/aosgp/out/target/product/kiwi/
mv lineage-aosgp-X-2.1.1-$(date +%Y%m%d)-kiwi.zip aosgp-X-2.1.1-$(date +%Y%m%d)-kiwi.zip
mv aosgp-X-2.1.1-$(date +%Y%m%d)-kiwi.zip /var/www/html/downloads/AOSGP/Huawei/Honor5X-kiwi/aosgp-X-2.1.1-$(date +%Y%m%d)-kiwi.zip